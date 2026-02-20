import 'package:freezed_annotation/freezed_annotation.dart';

part 'subscription_plan.freezed.dart';
part 'subscription_plan.g.dart';

@freezed
class SubscriptionPlan with _$SubscriptionPlan {
  factory SubscriptionPlan({
    String? name,
    String? description,
    String? duration,
    num? price,
  }) = _SubscriptionPlan;

  factory SubscriptionPlan.fromJson(Map<String, dynamic> json) =>
      _$SubscriptionPlanFromJson(json);

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}
