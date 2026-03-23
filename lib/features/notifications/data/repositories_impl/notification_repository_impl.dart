import '../../domain/entity/notification_entity.dart';
import '../datasource/notification_datasource.dart';
import '../models/notification_dto/notification_dto.dart';

abstract class BaseNotificationRepository {
  Future<void> registerFcmToken(String token);
  Future<void> removeFcmToken(String token);
  Future<PaginatedNotificationsEntity> getNotifications({
    int page = 1,
    int limit = 20,
    bool? isRead,
    String? type,
  });
  Future<int> getUnreadCount();
  Future<void> markAsRead(String id);
  Future<void> markAllAsRead();
}

class NotificationRepositoryImpl implements BaseNotificationRepository {
  final NotificationDatasourceImpl dataSource = NotificationDatasourceImpl();

  @override
  Future<void> registerFcmToken(String token) async {
    try {
      await dataSource.registerFcmToken(token);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<void> removeFcmToken(String token) async {
    try {
      await dataSource.removeFcmToken(token);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<PaginatedNotificationsEntity> getNotifications({
    int page = 1,
    int limit = 20,
    bool? isRead,
    String? type,
  }) async {
    try {
      final dto = await dataSource.getNotifications(
        page: page,
        limit: limit,
        isRead: isRead,
        type: type,
      );
      return dto.toEntity();
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<int> getUnreadCount() async {
    try {
      return await dataSource.getUnreadCount();
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<void> markAsRead(String id) async {
    try {
      await dataSource.markAsRead(id);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<void> markAllAsRead() async {
    try {
      await dataSource.markAllAsRead();
    } catch (e) {
      rethrow;
    }
  }
}
