// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subscription_history_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SubscriptionHistoryDto _$SubscriptionHistoryDtoFromJson(
  Map<String, dynamic> json,
) => _SubscriptionHistoryDto(
  data: (json['data'] as List<dynamic>?)
      ?.map((e) => Datum.fromJson(e as Map<String, dynamic>))
      .toList(),
  meta: json['meta'] == null
      ? null
      : Meta.fromJson(json['meta'] as Map<String, dynamic>),
);

Map<String, dynamic> _$SubscriptionHistoryDtoToJson(
  _SubscriptionHistoryDto instance,
) => <String, dynamic>{'data': instance.data, 'meta': instance.meta};
