// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'branch_type.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BranchType _$BranchTypeFromJson(Map<String, dynamic> json) => _BranchType(
  id: json['id'] as String?,
  name: json['name'] as String?,
  icon: json['icon'] as String?,
  createdAt: json['createdAt'] == null
      ? null
      : DateTime.parse(json['createdAt'] as String),
  updatedAt: json['updatedAt'] == null
      ? null
      : DateTime.parse(json['updatedAt'] as String),
  secondaryBranchIds: (json['secondaryBranchIds'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
);

Map<String, dynamic> _$BranchTypeToJson(_BranchType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'icon': instance.icon,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'secondaryBranchIds': instance.secondaryBranchIds,
    };
