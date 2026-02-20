// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_method_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PaymentMethodEntity _$PaymentMethodEntityFromJson(Map<String, dynamic> json) =>
    _PaymentMethodEntity(
      paymentMethods: (json['paymentMethods'] as List<dynamic>?)
          ?.map((e) => Datum.fromJson(e as Map<String, dynamic>))
          .toList(),
      meta: json['meta'] == null
          ? null
          : Meta.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PaymentMethodEntityToJson(
  _PaymentMethodEntity instance,
) => <String, dynamic>{
  'paymentMethods': instance.paymentMethods,
  'meta': instance.meta,
};
