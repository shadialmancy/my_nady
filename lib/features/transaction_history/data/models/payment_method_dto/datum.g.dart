// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'datum.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Datum _$DatumFromJson(Map<String, dynamic> json) => _Datum(
  id: json['id'] as String?,
  gatewayCardId: json['gatewayCardId'] as String?,
  cardBrand: json['cardBrand'] as String?,
  last4Digits: json['last4Digits'] as String?,
  expiryMonth: (json['expiryMonth'] as num?)?.toInt(),
  expiryYear: (json['expiryYear'] as num?)?.toInt(),
  cardholderName: json['cardholderName'] as String?,
  gatewayCustomerId: json['gatewayCustomerId'] as String?,
  createdAt: json['createdAt'] == null
      ? null
      : DateTime.parse(json['createdAt'] as String),
  updatedAt: json['updatedAt'] == null
      ? null
      : DateTime.parse(json['updatedAt'] as String),
);

Map<String, dynamic> _$DatumToJson(_Datum instance) => <String, dynamic>{
  'id': instance.id,
  'gatewayCardId': instance.gatewayCardId,
  'cardBrand': instance.cardBrand,
  'last4Digits': instance.last4Digits,
  'expiryMonth': instance.expiryMonth,
  'expiryYear': instance.expiryYear,
  'cardholderName': instance.cardholderName,
  'gatewayCustomerId': instance.gatewayCustomerId,
  'createdAt': instance.createdAt?.toIso8601String(),
  'updatedAt': instance.updatedAt?.toIso8601String(),
};
