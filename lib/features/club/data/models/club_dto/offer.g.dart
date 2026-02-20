// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'offer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Offer _$OfferFromJson(Map<String, dynamic> json) => _Offer(
  id: json['id'] as String?,
  name: json['name'] as String?,
  discountType: json['discountType'] as String?,
  discountValue: json['discountValue'] as num?,
  endDate: json['endDate'] == null
      ? null
      : DateTime.parse(json['endDate'] as String),
);

Map<String, dynamic> _$OfferToJson(_Offer instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'discountType': instance.discountType,
  'discountValue': instance.discountValue,
  'endDate': instance.endDate?.toIso8601String(),
};
