// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dairy_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DairyEntity _$DairyEntityFromJson(Map<String, dynamic> json) => _DairyEntity(
  data: (json['data'] as List<dynamic>?)
      ?.map((e) => DairyDatum.fromJson(e as Map<String, dynamic>))
      .toList(),
  meta: json['meta'] == null
      ? null
      : DairyMeta.fromJson(json['meta'] as Map<String, dynamic>),
);

Map<String, dynamic> _$DairyEntityToJson(_DairyEntity instance) =>
    <String, dynamic>{'data': instance.data, 'meta': instance.meta};
