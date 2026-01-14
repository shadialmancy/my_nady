// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'created_at.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CreatedAt _$CreatedAtFromJson(Map<String, dynamic> json) => _CreatedAt(
  date: json[r'$date'] == null
      ? null
      : DateTime.parse(json[r'$date'] as String),
);

Map<String, dynamic> _$CreatedAtToJson(_CreatedAt instance) =>
    <String, dynamic>{r'$date': instance.date?.toIso8601String()};
