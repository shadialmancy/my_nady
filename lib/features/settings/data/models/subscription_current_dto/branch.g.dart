// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'branch.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Branch _$BranchFromJson(Map<String, dynamic> json) => _Branch(
  name: json['name'] as String?,
  location: json['location'] == null
      ? null
      : Location.fromJson(json['location'] as Map<String, dynamic>),
  photos: (json['photos'] as List<dynamic>?)?.map((e) => e as String).toList(),
);

Map<String, dynamic> _$BranchToJson(_Branch instance) => <String, dynamic>{
  'name': instance.name,
  'location': instance.location,
  'photos': instance.photos,
};
