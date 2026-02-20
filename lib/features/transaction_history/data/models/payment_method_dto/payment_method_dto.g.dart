// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_method_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PaymentMethodDto _$PaymentMethodDtoFromJson(Map<String, dynamic> json) =>
    _PaymentMethodDto(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Datum.fromJson(e as Map<String, dynamic>))
          .toList(),
      meta: json['meta'] == null
          ? null
          : Meta.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PaymentMethodDtoToJson(_PaymentMethodDto instance) =>
    <String, dynamic>{'data': instance.data, 'meta': instance.meta};
