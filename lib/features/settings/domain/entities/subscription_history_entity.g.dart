// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subscription_history_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SubscriptionHistoryEntity _$SubscriptionHistoryEntityFromJson(
  Map<String, dynamic> json,
) => _SubscriptionHistoryEntity(
  data: (json['data'] as List<dynamic>?)
      ?.map((e) => Datum.fromJson(e as Map<String, dynamic>))
      .toList(),
  meta: json['meta'] == null
      ? null
      : Meta.fromJson(json['meta'] as Map<String, dynamic>),
);

Map<String, dynamic> _$SubscriptionHistoryEntityToJson(
  _SubscriptionHistoryEntity instance,
) => <String, dynamic>{'data': instance.data, 'meta': instance.meta};
