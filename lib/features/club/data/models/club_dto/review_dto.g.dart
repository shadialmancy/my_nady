// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'review_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ReviewDto _$ReviewDtoFromJson(Map<String, dynamic> json) => _ReviewDto(
  data: (json['data'] as List<dynamic>?)
      ?.map((e) => Review.fromJson(e as Map<String, dynamic>))
      .toList(),
  meta: json['meta'] == null
      ? null
      : Meta.fromJson(json['meta'] as Map<String, dynamic>),
);

Map<String, dynamic> _$ReviewDtoToJson(_ReviewDto instance) =>
    <String, dynamic>{'data': instance.data, 'meta': instance.meta};
