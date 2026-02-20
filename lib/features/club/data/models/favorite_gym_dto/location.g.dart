// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Location _$LocationFromJson(Map<String, dynamic> json) => _Location(
  type: json['type'] as String?,
  coordinates: (json['coordinates'] as List<dynamic>?)
      ?.map((e) => (e as num).toDouble())
      .toList(),
  address: json['address'] as String?,
  city: json['city'] as String?,
  area: json['area'] as String?,
);

Map<String, dynamic> _$LocationToJson(_Location instance) => <String, dynamic>{
  'type': instance.type,
  'coordinates': instance.coordinates,
  'address': instance.address,
  'city': instance.city,
  'area': instance.area,
};
