// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'other_branch.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_OtherBranch _$OtherBranchFromJson(Map<String, dynamic> json) => _OtherBranch(
  id: json['id'] as String?,
  name: json['name'] as String?,
  location: json['location'] == null
      ? null
      : Location.fromJson(json['location'] as Map<String, dynamic>),
);

Map<String, dynamic> _$OtherBranchToJson(_OtherBranch instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'location': instance.location,
    };
