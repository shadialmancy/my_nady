// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserDto _$UserDtoFromJson(Map<String, dynamic> json) => _UserDto(
  data: json['data'] == null
      ? null
      : Data.fromJson(json['data'] as Map<String, dynamic>),
  meta: json['meta'] == null
      ? null
      : Meta.fromJson(json['meta'] as Map<String, dynamic>),
);

Map<String, dynamic> _$UserDtoToJson(_UserDto instance) => <String, dynamic>{
  'data': instance.data,
  'meta': instance.meta,
};
