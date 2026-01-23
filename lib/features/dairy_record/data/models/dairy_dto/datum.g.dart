// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'datum.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DairyDatum _$DairyDatumFromJson(Map<String, dynamic> json) => _DairyDatum(
  id: json['id'] as String?,
  title: json['title'] as String?,
  content: json['content'] as String?,
  date: json['date'] == null ? null : DateTime.parse(json['date'] as String),
  images: (json['images'] as List<dynamic>?)?.map((e) => e as String).toList(),
  items: (json['items'] as List<dynamic>?)
      ?.map((e) => DairyItem.fromJson(e as Map<String, dynamic>))
      .toList(),
  createdAt: json['createdAt'] == null
      ? null
      : DateTime.parse(json['createdAt'] as String),
  updatedAt: json['updatedAt'] == null
      ? null
      : DateTime.parse(json['updatedAt'] as String),
);

Map<String, dynamic> _$DairyDatumToJson(_DairyDatum instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'content': instance.content,
      'date': instance.date?.toIso8601String(),
      'images': instance.images,
      'items': instance.items,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };
