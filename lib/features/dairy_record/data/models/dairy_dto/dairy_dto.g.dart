// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dairy_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DairyDto _$DairyDtoFromJson(Map<String, dynamic> json) => _DairyDto(
  data: (json['data'] as List<dynamic>?)
      ?.map((e) => DairyDatum.fromJson(e as Map<String, dynamic>))
      .toList(),
  meta: json['meta'] == null
      ? null
      : DairyMeta.fromJson(json['meta'] as Map<String, dynamic>),
);

Map<String, dynamic> _$DairyDtoToJson(_DairyDto instance) => <String, dynamic>{
  'data': instance.data,
  'meta': instance.meta,
};
