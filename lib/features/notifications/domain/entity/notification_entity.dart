import 'package:freezed_annotation/freezed_annotation.dart';

part 'notification_entity.freezed.dart';
part 'notification_entity.g.dart';

enum NotificationType {
  GENERAL,
  SUBSCRIPTION,
  PAYMENT,
  PROMOTION,
  SYSTEM,
  SUPPORT,
}

@freezed
class NotificationEntity with _$NotificationEntity {
  factory NotificationEntity({
    required String id,
    required String title,
    String? description,
    String? icon,
    required NotificationType type,
    Map<String, dynamic>? data,
    required bool isRead,
    DateTime? readAt,
    required DateTime createdAt,
  }) = _NotificationEntity;

  factory NotificationEntity.fromJson(Map<String, dynamic> json) =>
      _$NotificationEntityFromJson(json);

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}

@freezed
class PaginatedNotificationsEntity with _$PaginatedNotificationsEntity {
  factory PaginatedNotificationsEntity({
    required List<NotificationEntity> notifications,
    required int total,
    required int page,
    required int limit,
    required int totalPages,
  }) = _PaginatedNotificationsEntity;

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}
