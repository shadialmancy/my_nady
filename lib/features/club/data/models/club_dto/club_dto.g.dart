// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'club_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ClubDto _$ClubDtoFromJson(Map<String, dynamic> json) => _ClubDto(
  data: (json['data'] as List<dynamic>?)
      ?.map((e) => Datum.fromJson(e as Map<String, dynamic>))
      .toList(),
  meta: json['meta'] == null
      ? null
      : Meta.fromJson(json['meta'] as Map<String, dynamic>),
);

Map<String, dynamic> _$ClubDtoToJson(_ClubDto instance) => <String, dynamic>{
  'data': instance.data,
  'meta': instance.meta,
};
