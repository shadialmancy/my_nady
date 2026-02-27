// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'review_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ReviewEntity _$ReviewEntityFromJson(Map<String, dynamic> json) =>
    _ReviewEntity(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => ReviewData.fromJson(e as Map<String, dynamic>))
          .toList(),
      meta: json['meta'] == null
          ? null
          : ReviewMeta.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ReviewEntityToJson(_ReviewEntity instance) =>
    <String, dynamic>{'data': instance.data, 'meta': instance.meta};
