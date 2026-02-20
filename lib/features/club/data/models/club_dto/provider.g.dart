// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'provider.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Provider _$ProviderFromJson(Map<String, dynamic> json) => _Provider(
  id: json['id'] as String?,
  name: json['name'] as String?,
  email: json['email'] as String?,
  phone: json['phone'] as String?,
  description: json['description'] as String?,
  logo: json['logo'] as String?,
  website: json['website'] as String?,
  photos: (json['photos'] as List<dynamic>?)?.map((e) => e as String).toList(),
  active: json['active'] as bool?,
  status: json['status'] as String?,
  lastActivityAt: json['lastActivityAt'] == null
      ? null
      : DateTime.parse(json['lastActivityAt'] as String),
  approvedAt: json['approvedAt'] == null
      ? null
      : DateTime.parse(json['approvedAt'] as String),
  approvedBy: json['approvedBy'] as String?,
  createdAt: json['createdAt'] == null
      ? null
      : DateTime.parse(json['createdAt'] as String),
  updatedAt: json['updatedAt'] == null
      ? null
      : DateTime.parse(json['updatedAt'] as String),
);

Map<String, dynamic> _$ProviderToJson(_Provider instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'email': instance.email,
  'phone': instance.phone,
  'description': instance.description,
  'logo': instance.logo,
  'website': instance.website,
  'photos': instance.photos,
  'active': instance.active,
  'status': instance.status,
  'lastActivityAt': instance.lastActivityAt?.toIso8601String(),
  'approvedAt': instance.approvedAt?.toIso8601String(),
  'approvedBy': instance.approvedBy,
  'createdAt': instance.createdAt?.toIso8601String(),
  'updatedAt': instance.updatedAt?.toIso8601String(),
};
