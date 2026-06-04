// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'refresh_response_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RefreshResponseEntity _$RefreshResponseEntityFromJson(
  Map<String, dynamic> json,
) => _RefreshResponseEntity(
  data: json['data'] == null
      ? null
      : Data.fromJson(json['data'] as Map<String, dynamic>),
  meta: json['meta'] == null
      ? null
      : Meta.fromJson(json['meta'] as Map<String, dynamic>),
);

Map<String, dynamic> _$RefreshResponseEntityToJson(
  _RefreshResponseEntity instance,
) => <String, dynamic>{'data': instance.data, 'meta': instance.meta};
