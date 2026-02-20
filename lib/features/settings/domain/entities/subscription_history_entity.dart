import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/models/subscription_history_dto/datum.dart';
import '../../data/models/subscription_history_dto/meta.dart';

part 'subscription_history_entity.freezed.dart';
part 'subscription_history_entity.g.dart';

@freezed
class SubscriptionHistoryEntity with _$SubscriptionHistoryEntity {
  factory SubscriptionHistoryEntity({List<Datum>? data, Meta? meta}) =
      _SubscriptionHistoryEntity;

  factory SubscriptionHistoryEntity.fromJson(Map<String, dynamic> json) =>
      _$SubscriptionHistoryEntityFromJson(json);

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}
