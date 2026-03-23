import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../domain/entity/notification_entity.dart';

import 'datum.dart';
import 'meta.dart';

part 'notification_dto.freezed.dart';
part 'notification_dto.g.dart';

@freezed
class NotificationDto with _$NotificationDto {
  factory NotificationDto({List<Datum>? data, Meta? meta}) = _NotificationDto;

  factory NotificationDto.fromJson(Map<String, dynamic> json) =>
      _$NotificationDtoFromJson(json);

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}

extension NotificationDtoX on NotificationDto {
  PaginatedNotificationsEntity toEntity() {
    return PaginatedNotificationsEntity(
      notifications: data?.map((e) => e.toEntity()).toList() ?? [],
      total: meta?.total?.toInt() ?? 0,
      page: meta?.page?.toInt() ?? 1,
      limit: meta?.limit?.toInt() ?? 20,
      totalPages: meta?.totalPages?.toInt() ?? 1,
    );
  }
}
