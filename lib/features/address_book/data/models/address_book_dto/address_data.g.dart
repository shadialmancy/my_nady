// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AddressData _$AddressDataFromJson(Map<String, dynamic> json) => _AddressData(
  location: json['location'] == null
      ? null
      : Location.fromJson(json['location'] as Map<String, dynamic>),
  id: json['id'] as String?,
  userId: json['userId'] as String?,
  label: json['label'] as String?,
  latitude: (json['latitude'] as num?)?.toDouble(),
  longitude: (json['longitude'] as num?)?.toDouble(),
  isDefault: json['isDefault'] as bool?,
  createdAt: json['createdAt'] == null
      ? null
      : DateTime.parse(json['createdAt'] as String),
  updatedAt: json['updatedAt'] == null
      ? null
      : DateTime.parse(json['updatedAt'] as String),
);

Map<String, dynamic> _$AddressDataToJson(_AddressData instance) =>
    <String, dynamic>{
      'location': instance.location,
      'id': instance.id,
      'userId': instance.userId,
      'label': instance.label,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'isDefault': instance.isDefault,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };
