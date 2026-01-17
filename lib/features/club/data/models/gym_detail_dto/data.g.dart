// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Data _$DataFromJson(Map<String, dynamic> json) => _Data(
  id: json['id'] as String?,
  name: json['name'] as String?,
  description: json['description'] as String?,
  photos: (json['photos'] as List<dynamic>?)?.map((e) => e as String).toList(),
  logo: json['logo'] as String?,
  location: json['location'] == null
      ? null
      : Location.fromJson(json['location'] as Map<String, dynamic>),
  genderType: json['genderType'] as String?,
  provider: json['provider'] == null
      ? null
      : Provider.fromJson(json['provider'] as Map<String, dynamic>),
  amenities: (json['amenities'] as List<dynamic>?)
      ?.map((e) => Amenity.fromJson(e as Map<String, dynamic>))
      .toList(),
  contact: json['contact'] == null
      ? null
      : Contact.fromJson(json['contact'] as Map<String, dynamic>),
  subscriptionPlans: (json['subscriptionPlans'] as List<dynamic>?)
      ?.map((e) => SubscriptionPlan.fromJson(e as Map<String, dynamic>))
      .toList(),
  classes: json['classes'] as List<dynamic>?,
  offers: (json['offers'] as List<dynamic>?)
      ?.map((e) => Offer.fromJson(e as Map<String, dynamic>))
      .toList(),
  rating: json['rating'] == null
      ? null
      : Rating.fromJson(json['rating'] as Map<String, dynamic>),
  whatsappLink: json['whatsappLink'] as String?,
  otherBranches: (json['otherBranches'] as List<dynamic>?)
      ?.map((e) => OtherBranch.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$DataToJson(_Data instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'description': instance.description,
  'photos': instance.photos,
  'logo': instance.logo,
  'location': instance.location,
  'genderType': instance.genderType,
  'provider': instance.provider,
  'amenities': instance.amenities,
  'contact': instance.contact,
  'subscriptionPlans': instance.subscriptionPlans,
  'classes': instance.classes,
  'offers': instance.offers,
  'rating': instance.rating,
  'whatsappLink': instance.whatsappLink,
  'otherBranches': instance.otherBranches,
};
