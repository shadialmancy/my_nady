// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meta.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Meta _$MetaFromJson(Map<String, dynamic> json) => _Meta(
  timestamp: json['timestamp'] == null
      ? null
      : DateTime.parse(json['timestamp'] as String),
);

Map<String, dynamic> _$MetaToJson(_Meta instance) => <String, dynamic>{
  'timestamp': instance.timestamp?.toIso8601String(),
};
