// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'branch_type.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BranchType _$BranchTypeFromJson(Map<String, dynamic> json) => _BranchType(
  id: json['_id'] == null
      ? null
      : Id.fromJson(json['_id'] as Map<String, dynamic>),
  name: json['name'] as String?,
  icon: json['icon'] as String?,
  createdAt: json['createdAt'] as String?,
  updatedAt: json['updatedAt'] as String?,
);

Map<String, dynamic> _$BranchTypeToJson(_BranchType instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'name': instance.name,
      'icon': instance.icon,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };
