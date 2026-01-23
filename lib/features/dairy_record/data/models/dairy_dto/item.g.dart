// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DairyItem _$DairyItemFromJson(Map<String, dynamic> json) => _DairyItem(
  id: json['id'] as String?,
  title: json['title'] as String?,
  description: json['description'] as String?,
  isCompleted: json['isCompleted'] as bool?,
  order: json['order'] as num?,
);

Map<String, dynamic> _$DairyItemToJson(_DairyItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'isCompleted': instance.isCompleted,
      'order': instance.order,
    };
