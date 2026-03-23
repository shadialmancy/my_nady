// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'datum.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Datum _$DatumFromJson(Map<String, dynamic> json) => _Datum(
  id: json['id'] as String?,
  title: json['title'] as String?,
  description: json['description'] as String?,
  icon: json['icon'] as String?,
  type: json['type'] as String?,
  data: json['data'] == null
      ? null
      : Data.fromJson(json['data'] as Map<String, dynamic>),
  isRead: json['isRead'] as bool?,
  readAt: json['readAt'] as String?,
  createdAt: json['createdAt'] as String?,
);

Map<String, dynamic> _$DatumToJson(_Datum instance) => <String, dynamic>{
  'id': instance.id,
  'title': instance.title,
  'description': instance.description,
  'icon': instance.icon,
  'type': instance.type,
  'data': instance.data,
  'isRead': instance.isRead,
  'readAt': instance.readAt,
  'createdAt': instance.createdAt,
};
