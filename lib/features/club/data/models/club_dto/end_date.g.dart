// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'end_date.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_EndDate _$EndDateFromJson(Map<String, dynamic> json) => _EndDate(
  date: json[r'$date'] == null
      ? null
      : DateTime.parse(json[r'$date'] as String),
);

Map<String, dynamic> _$EndDateToJson(_EndDate instance) => <String, dynamic>{
  r'$date': instance.date?.toIso8601String(),
};
