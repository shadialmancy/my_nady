// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'club_filter_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ClubFilterRequest _$ClubFilterRequestFromJson(Map<String, dynamic> json) =>
    _ClubFilterRequest(
      search: json['search'] as String?,
      lat: json['lat'] as num?,
      lng: json['lng'] as num?,
      radius: json['radius'] as num?,
      gender: json['gender'] as String?,
      typeId: json['typeId'] as String?,
      amenityIds: (json['amenityIds'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      area: json['area'] as String?,
      minPrice: json['minPrice'] as num?,
      maxPrice: json['maxPrice'] as num?,
      sortBy: json['sortBy'] as String?,
      page: json['page'] as num?,
      limit: json['limit'] as num?,
      hasOffers: json['hasOffers'] as bool?,
    );

Map<String, dynamic> _$ClubFilterRequestToJson(_ClubFilterRequest instance) =>
    <String, dynamic>{
      'search': instance.search,
      'lat': instance.lat,
      'lng': instance.lng,
      'radius': instance.radius,
      'gender': instance.gender,
      'typeId': instance.typeId,
      'amenityIds': instance.amenityIds,
      'area': instance.area,
      'minPrice': instance.minPrice,
      'maxPrice': instance.maxPrice,
      'sortBy': instance.sortBy,
      'page': instance.page,
      'limit': instance.limit,
      'hasOffers': instance.hasOffers,
    };
