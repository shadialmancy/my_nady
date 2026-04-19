import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../data/repositories_impl/notification_repository_impl.dart';
import '../entity/notification_entity.dart';

part 'notification_repository.g.dart';

@Riverpod(keepAlive: true)
class NotificationRepository extends _$NotificationRepository {
  @override
  FutureOr<void> build() {}

  final NotificationRepositoryImpl _repositoryImpl =
      NotificationRepositoryImpl();

  Future<void> registerFcmToken(String token) async {
    try {
      await _repositoryImpl.registerFcmToken(token);
    } catch (e) {
      rethrow;
    }
  }

  Future<void> removeFcmToken(String token) async {
    try {
      await _repositoryImpl.removeFcmToken(token);
    } catch (e) {
      rethrow;
    }
  }

  Future<PaginatedNotificationsEntity> getNotifications({
    int page = 1,
    int limit = 20,
    bool? isRead,
    String? type,
  }) async {
    try {
      return await _repositoryImpl.getNotifications(
        page: page,
        limit: limit,
        isRead: isRead,
        type: type,
      );
    } catch (e) {
      rethrow;
    }
  }

  Future<int> getUnreadCount() async {
    try {
      return await _repositoryImpl.getUnreadCount();
    } catch (e) {
      rethrow;
    }
  }

  Future<void> markAsRead(String id) async {
    try {
      await _repositoryImpl.markAsRead(id);
    } catch (e) {
      rethrow;
    }
  }

  Future<void> markAllAsRead() async {
    try {
      await _repositoryImpl.markAllAsRead();
    } catch (e) {
      rethrow;
    }
  }
}
