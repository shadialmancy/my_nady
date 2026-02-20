// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'datum.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Datum _$DatumFromJson(Map<String, dynamic> json) => _Datum(
  id: json['id'] as String?,
  name: json['name'] as String?,
  providerId: json['providerId'] as String?,
  photos: (json['photos'] as List<dynamic>?)?.map((e) => e as String).toList(),
  logo: json['logo'] as String?,
  description: json['description'] as String?,
  genderType: json['genderType'] as String?,
  isFeatured: json['isFeatured'] as bool?,
  active: json['active'] as bool?,
  createdAt: json['createdAt'] == null
      ? null
      : DateTime.parse(json['createdAt'] as String),
  updatedAt: json['updatedAt'] == null
      ? null
      : DateTime.parse(json['updatedAt'] as String),
  deletedAt: json['deletedAt'],
  branchTypeId: json['branchTypeId'] as String?,
  secondaryTypeIds: (json['secondaryTypeIds'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  amenityIds: (json['amenityIds'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  location: json['location'] == null
      ? null
      : Location.fromJson(json['location'] as Map<String, dynamic>),
  distance: json['distance'] as num?,
  minPlanPrice: json['minPlanPrice'] as num?,
  maxPlanPrice: json['maxPlanPrice'] as num?,
  branchType: json['branchType'] == null
      ? null
      : BranchType.fromJson(json['branchType'] as Map<String, dynamic>),
  provider: json['provider'] == null
      ? null
      : Provider.fromJson(json['provider'] as Map<String, dynamic>),
  amenities: (json['amenities'] as List<dynamic>?)
      ?.map((e) => Amenity.fromJson(e as Map<String, dynamic>))
      .toList(),
  rating: json['rating'] as num?,
  reviewCount: json['reviewCount'] as num?,
  offers: (json['offers'] as List<dynamic>?)
      ?.map((e) => Offer.fromJson(e as Map<String, dynamic>))
      .toList(),
  isFavorite: json['isFavorite'] as bool?,
);

Map<String, dynamic> _$DatumToJson(_Datum instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'providerId': instance.providerId,
  'photos': instance.photos,
  'logo': instance.logo,
  'description': instance.description,
  'genderType': instance.genderType,
  'isFeatured': instance.isFeatured,
  'active': instance.active,
  'createdAt': instance.createdAt?.toIso8601String(),
  'updatedAt': instance.updatedAt?.toIso8601String(),
  'deletedAt': instance.deletedAt,
  'branchTypeId': instance.branchTypeId,
  'secondaryTypeIds': instance.secondaryTypeIds,
  'amenityIds': instance.amenityIds,
  'location': instance.location,
  'distance': instance.distance,
  'minPlanPrice': instance.minPlanPrice,
  'maxPlanPrice': instance.maxPlanPrice,
  'branchType': instance.branchType,
  'provider': instance.provider,
  'amenities': instance.amenities,
  'rating': instance.rating,
  'reviewCount': instance.reviewCount,
  'offers': instance.offers,
  'isFavorite': instance.isFavorite,
};
