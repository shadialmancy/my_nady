// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_method_request_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PaymentMethodRequestDto _$PaymentMethodRequestDtoFromJson(
  Map<String, dynamic> json,
) => _PaymentMethodRequestDto(
  gatewayCardId: json['gatewayCardId'] as String,
  cardBrand: json['cardBrand'] as String,
  last4Digits: json['last4Digits'] as String,
  expiryMonth: (json['expiryMonth'] as num).toInt(),
  expiryYear: (json['expiryYear'] as num).toInt(),
  cardholderName: json['cardholderName'] as String,
  gatewayCustomerId: json['gatewayCustomerId'] as String,
);

Map<String, dynamic> _$PaymentMethodRequestDtoToJson(
  _PaymentMethodRequestDto instance,
) => <String, dynamic>{
  'gatewayCardId': instance.gatewayCardId,
  'cardBrand': instance.cardBrand,
  'last4Digits': instance.last4Digits,
  'expiryMonth': instance.expiryMonth,
  'expiryYear': instance.expiryYear,
  'cardholderName': instance.cardholderName,
  'gatewayCustomerId': instance.gatewayCustomerId,
};
