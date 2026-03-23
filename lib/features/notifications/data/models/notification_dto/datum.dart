import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../domain/entity/notification_entity.dart';

import 'data.dart';

part 'datum.freezed.dart';
part 'datum.g.dart';

@freezed
class Datum with _$Datum {
  factory Datum({
    String? id,
    String? title,
    String? description,
    String? icon,
    String? type,
    Data? data,
    bool? isRead,
    String? readAt,
    String? createdAt,
  }) = _Datum;

  factory Datum.fromJson(Map<String, dynamic> json) => _$DatumFromJson(json);

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}

extension DatumX on Datum {
  NotificationEntity toEntity() {
    return NotificationEntity(
      id: id ?? '',
      title: title ?? '',
      description: description,
      icon: icon,
      type: NotificationType.values.firstWhere(
        (e) => e.name == type,
        orElse: () => NotificationType.GENERAL,
      ),
      data: data != null ? {'route': data!.route} : null,
      isRead: isRead ?? false,
      readAt: readAt != null ? DateTime.tryParse(readAt!) : null,
      createdAt:
          createdAt != null ? DateTime.tryParse(createdAt!) ?? DateTime.now() : DateTime.now(),
    );
  }
}
