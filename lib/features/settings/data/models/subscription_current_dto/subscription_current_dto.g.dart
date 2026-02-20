// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subscription_current_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SubscriptionCurrentDto _$SubscriptionCurrentDtoFromJson(
  Map<String, dynamic> json,
) => _SubscriptionCurrentDto(
  data: (json['data'] as List<dynamic>?)
      ?.map((e) => Datum.fromJson(e as Map<String, dynamic>))
      .toList(),
  meta: json['meta'] == null
      ? null
      : Meta.fromJson(json['meta'] as Map<String, dynamic>),
);

Map<String, dynamic> _$SubscriptionCurrentDtoToJson(
  _SubscriptionCurrentDto instance,
) => <String, dynamic>{'data': instance.data, 'meta': instance.meta};
