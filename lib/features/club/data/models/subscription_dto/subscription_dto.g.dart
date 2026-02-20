// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subscription_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SubscriptionDto _$SubscriptionDtoFromJson(Map<String, dynamic> json) =>
    _SubscriptionDto(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Datum.fromJson(e as Map<String, dynamic>))
          .toList(),
      meta: json['meta'] == null
          ? null
          : Meta.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SubscriptionDtoToJson(_SubscriptionDto instance) =>
    <String, dynamic>{'data': instance.data, 'meta': instance.meta};
