// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'refresh_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RefreshResponseDto _$RefreshResponseDtoFromJson(Map<String, dynamic> json) =>
    _RefreshResponseDto(
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
      meta: json['meta'] == null
          ? null
          : Meta.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$RefreshResponseDtoToJson(_RefreshResponseDto instance) =>
    <String, dynamic>{'data': instance.data, 'meta': instance.meta};
