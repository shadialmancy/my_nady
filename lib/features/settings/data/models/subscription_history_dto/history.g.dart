// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'history.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_History _$HistoryFromJson(Map<String, dynamic> json) => _History(
  id: json['id'] as String?,
  changeDate: json['changeDate'] == null
      ? null
      : DateTime.parse(json['changeDate'] as String),
  changeType: json['changeType'] as String?,
  previousStatus: json['previousStatus'] as String?,
  newStatus: json['newStatus'] as String?,
  notes: json['notes'] as String?,
);

Map<String, dynamic> _$HistoryToJson(_History instance) => <String, dynamic>{
  'id': instance.id,
  'changeDate': instance.changeDate?.toIso8601String(),
  'changeType': instance.changeType,
  'previousStatus': instance.previousStatus,
  'newStatus': instance.newStatus,
  'notes': instance.notes,
};
