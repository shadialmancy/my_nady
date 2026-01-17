// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gym_detail_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GymDetailDto _$GymDetailDtoFromJson(Map<String, dynamic> json) =>
    _GymDetailDto(
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
      meta: json['meta'] == null
          ? null
          : Meta.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GymDetailDtoToJson(_GymDetailDto instance) =>
    <String, dynamic>{'data': instance.data, 'meta': instance.meta};
