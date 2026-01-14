// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'updated_at.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UpdatedAt _$UpdatedAtFromJson(Map<String, dynamic> json) => _UpdatedAt(
  date: json[r'$date'] == null
      ? null
      : DateTime.parse(json[r'$date'] as String),
);

Map<String, dynamic> _$UpdatedAtToJson(_UpdatedAt instance) =>
    <String, dynamic>{r'$date': instance.date?.toIso8601String()};
