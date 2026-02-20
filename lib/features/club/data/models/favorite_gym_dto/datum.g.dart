// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'datum.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Datum _$DatumFromJson(Map<String, dynamic> json) => _Datum(
  id: json['id'] as String?,
  name: json['name'] as String?,
  description: json['description'] as String?,
  photos: (json['photos'] as List<dynamic>?)?.map((e) => e as String).toList(),
  logo: json['logo'] as String?,
  location: json['location'] == null
      ? null
      : Location.fromJson(json['location'] as Map<String, dynamic>),
  genderType: json['genderType'] as String?,
  active: json['active'] as bool?,
  isFeatured: json['isFeatured'] as bool?,
  providerId: json['providerId'] as String?,
  provider: json['provider'] == null
      ? null
      : Provider.fromJson(json['provider'] as Map<String, dynamic>),
  branchType: json['branchType'] == null
      ? null
      : BranchType.fromJson(json['branchType'] as Map<String, dynamic>),
  amenities: (json['amenities'] as List<dynamic>?)
      ?.map((e) => Amenity.fromJson(e as Map<String, dynamic>))
      .toList(),
  offers: json['offers'] as List<dynamic>?,
  hasOffers: json['hasOffers'] as bool?,
  reviewCount: json['reviewCount'] as num?,
  isFavorite: json['isFavorite'] as bool?,
);

Map<String, dynamic> _$DatumToJson(_Datum instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'description': instance.description,
  'photos': instance.photos,
  'logo': instance.logo,
  'location': instance.location,
  'genderType': instance.genderType,
  'active': instance.active,
  'isFeatured': instance.isFeatured,
  'providerId': instance.providerId,
  'provider': instance.provider,
  'branchType': instance.branchType,
  'amenities': instance.amenities,
  'offers': instance.offers,
  'hasOffers': instance.hasOffers,
  'reviewCount': instance.reviewCount,
  'isFavorite': instance.isFavorite,
};
