// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Location _$LocationFromJson(Map<String, dynamic> json) => _Location(
  address: json['address'] as String?,
  city: json['city'] as String?,
  country: json['country'] as String?,
  area: json['area'] as String?,
  coordinates: json['coordinates'] == null
      ? null
      : Coordinates.fromJson(json['coordinates'] as Map<String, dynamic>),
);

Map<String, dynamic> _$LocationToJson(_Location instance) => <String, dynamic>{
  'address': instance.address,
  'city': instance.city,
  'country': instance.country,
  'area': instance.area,
  'coordinates': instance.coordinates,
};
