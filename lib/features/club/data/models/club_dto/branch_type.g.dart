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
  createdAt: json['createdAt'] == null
      ? null
      : CreatedAt.fromJson(json['createdAt'] as Map<String, dynamic>),
  updatedAt: json['updatedAt'] == null
      ? null
      : UpdatedAt.fromJson(json['updatedAt'] as Map<String, dynamic>),
  secondaryBranchIds: (json['secondaryBranchIds'] as List<dynamic>?)
      ?.map((e) => SecondaryBranchId.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$BranchTypeToJson(_BranchType instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'name': instance.name,
      'icon': instance.icon,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'secondaryBranchIds': instance.secondaryBranchIds,
    };
