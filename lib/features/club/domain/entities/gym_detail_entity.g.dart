// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gym_detail_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GymDetailEntity _$GymDetailEntityFromJson(Map<String, dynamic> json) =>
    _GymDetailEntity(
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
      meta: json['meta'] == null
          ? null
          : Meta.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GymDetailEntityToJson(_GymDetailEntity instance) =>
    <String, dynamic>{'data': instance.data, 'meta': instance.meta};
