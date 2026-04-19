// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schedule.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Schedule _$ScheduleFromJson(Map<String, dynamic> json) => _Schedule(
  dayOfWeek: json['dayOfWeek'] as num?,
  startTime: json['startTime'] as String?,
  endTime: json['endTime'] as String?,
  instructor: json['instructor'] as String?,
);

Map<String, dynamic> _$ScheduleToJson(_Schedule instance) => <String, dynamic>{
  'dayOfWeek': instance.dayOfWeek,
  'startTime': instance.startTime,
  'endTime': instance.endTime,
  'instructor': instance.instructor,
};
