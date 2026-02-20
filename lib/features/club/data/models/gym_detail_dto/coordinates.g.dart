// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coordinates.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Coordinates _$CoordinatesFromJson(Map<String, dynamic> json) => _Coordinates(
  coordinates: (json['coordinates'] as List<dynamic>?)
      ?.map((e) => (e as num).toDouble())
      .toList(),
);

Map<String, dynamic> _$CoordinatesToJson(_Coordinates instance) =>
    <String, dynamic>{'coordinates': instance.coordinates};
