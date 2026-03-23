import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../domain/entity/notification_entity.dart';
import '../../domain/repositories/notification_repository.dart';
import '../../../../core/shared/widgets/app_toast.dart';

part 'notification_provider.g.dart';

@riverpod
class NotificationList extends _$NotificationList {
  int _currentPage = 1;
  bool _hasMore = true;
  bool _isLoadingMore = false;

  bool get hasMore => _hasMore;
  bool get isLoadingMore => _isLoadingMore;

  @override
  FutureOr<List<NotificationEntity>> build() async {
    _currentPage = 1;
    _hasMore = true;
    final repository = ref.read(notificationRepositoryProvider.notifier);
    final paginated = await repository.getNotifications(page: _currentPage);
    _hasMore = paginated.page < paginated.totalPages;
    return paginated.notifications;
  }

  Future<void> refresh() async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      _currentPage = 1;
      _hasMore = true;
      final repository = ref.read(notificationRepositoryProvider.notifier);
      final paginated = await repository.getNotifications(page: _currentPage);
      _hasMore = paginated.page < paginated.totalPages;

      // Update unread count when refreshing notifications
      ref.invalidate(unreadCountProvider);

      return paginated.notifications;
    });
  }

  Future<void> loadMore() async {
    if (_isLoadingMore || !_hasMore) return;

    _isLoadingMore = true;
    try {
      final nextPage = _currentPage + 1;
      final repository = ref.read(notificationRepositoryProvider.notifier);
      final paginated = await repository.getNotifications(page: nextPage);

      final currentList = state.value ?? [];
      state = AsyncValue.data([...currentList, ...paginated.notifications]);

      _currentPage = nextPage;
      _hasMore = paginated.page < paginated.totalPages;
    } catch (e, _) {
      // Don't change state to error, just show toast
      AppToast.errorToast(e.toString());
    } finally {
      _isLoadingMore = false;
    }
  }

  Future<void> markAsRead(String id) async {
    try {
      final repository = ref.read(notificationRepositoryProvider.notifier);
      await repository.markAsRead(id);

      // Update local state for immediate UI feedback
      final currentList = state.value;
      if (currentList != null) {
        final index = currentList.indexWhere((n) => n.id == id);
        if (index != -1 && !currentList[index].isRead) {
          final updatedNotification = currentList[index].copyWith(
            isRead: true,
            readAt: DateTime.now(),
          );

          final newList = List<NotificationEntity>.from(currentList);
          newList[index] = updatedNotification;
          state = AsyncValue.data(newList);

          // Decrement unread count locally
          ref.read(unreadCountProvider.notifier).decrement();
        }
      }
    } catch (e) {
      AppToast.errorToast(e.toString());
    }
  }

  Future<void> markAllAsRead() async {
    try {
      final repository = ref.read(notificationRepositoryProvider.notifier);
      await repository.markAllAsRead();

      // Update local state
      final currentList = state.value;
      if (currentList != null) {
        final newList = currentList
            .map((n) => n.copyWith(isRead: true, readAt: DateTime.now()))
            .toList();
        state = AsyncValue.data(newList);

        // Reset unread count
        ref.read(unreadCountProvider.notifier).reset();
      }
    } catch (e) {
      AppToast.errorToast(e.toString());
    }
  }
}

@riverpod
class UnreadCount extends _$UnreadCount {
  @override
  FutureOr<int> build() async {
    final repository = ref.read(notificationRepositoryProvider.notifier);
    return await repository.getUnreadCount();
  }

  void decrement() {
    final current = state.value ?? 0;
    if (current > 0) {
      state = AsyncValue.data(current - 1);
    }
  }

  void reset() {
    state = const AsyncValue.data(0);
  }

  Future<void> refresh() async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() {
      final repository = ref.read(notificationRepositoryProvider.notifier);
      return repository.getUnreadCount();
    });
  }
}
