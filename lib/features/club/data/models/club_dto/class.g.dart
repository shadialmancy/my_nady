// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'class.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Class _$ClassFromJson(Map<String, dynamic> json) => _Class(
  id: json['id'] as String?,
  name: json['name'] as String?,
  description: json['description'] as String?,
  schedule: (json['schedule'] as List<dynamic>?)
      ?.map((e) => Schedule.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$ClassToJson(_Class instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'description': instance.description,
  'schedule': instance.schedule,
};
