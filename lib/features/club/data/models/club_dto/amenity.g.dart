// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'amenity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Amenity _$AmenityFromJson(Map<String, dynamic> json) => _Amenity(
  id: json['id'] as String?,
  name: json['name'] as String?,
  icon: json['icon'] as String?,
  createdAt: json['createdAt'] == null
      ? null
      : DateTime.parse(json['createdAt'] as String),
  updatedAt: json['updatedAt'] == null
      ? null
      : DateTime.parse(json['updatedAt'] as String),
  branchIds: (json['branchIds'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
);

Map<String, dynamic> _$AmenityToJson(_Amenity instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'icon': instance.icon,
  'createdAt': instance.createdAt?.toIso8601String(),
  'updatedAt': instance.updatedAt?.toIso8601String(),
  'branchIds': instance.branchIds,
};
