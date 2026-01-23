// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meta.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DairyMeta _$DairyMetaFromJson(Map<String, dynamic> json) => _DairyMeta(
  timestamp: json['timestamp'] == null
      ? null
      : DateTime.parse(json['timestamp'] as String),
);

Map<String, dynamic> _$DairyMetaToJson(_DairyMeta instance) =>
    <String, dynamic>{'timestamp': instance.timestamp?.toIso8601String()};
