// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'offer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Offer _$OfferFromJson(Map<String, dynamic> json) => _Offer(
  id: json['_id'] == null
      ? null
      : Id.fromJson(json['_id'] as Map<String, dynamic>),
  name: json['name'] as String?,
  discountType: json['discountType'] as String?,
  discountValue: json['discountValue'] as num?,
  endDate: json['endDate'] == null
      ? null
      : EndDate.fromJson(json['endDate'] as Map<String, dynamic>),
);

Map<String, dynamic> _$OfferToJson(_Offer instance) => <String, dynamic>{
  '_id': instance.id,
  'name': instance.name,
  'discountType': instance.discountType,
  'discountValue': instance.discountValue,
  'endDate': instance.endDate,
};
