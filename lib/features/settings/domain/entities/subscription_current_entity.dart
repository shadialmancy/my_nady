import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/models/subscription_current_dto/datum.dart';
import '../../data/models/subscription_current_dto/meta.dart';

part 'subscription_current_entity.freezed.dart';
part 'subscription_current_entity.g.dart';

@freezed
class SubscriptionCurrentEntity with _$SubscriptionCurrentEntity {
  factory SubscriptionCurrentEntity({List<Datum>? data, Meta? meta}) =
      _SubscriptionCurrentEntity;

  factory SubscriptionCurrentEntity.fromJson(Map<String, dynamic> json) =>
      _$SubscriptionCurrentEntityFromJson(json);

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}
