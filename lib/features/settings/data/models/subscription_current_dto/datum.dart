import 'package:freezed_annotation/freezed_annotation.dart';

import 'branch.dart';
import 'subscription_plan.dart';

part 'datum.freezed.dart';
part 'datum.g.dart';

@freezed
class Datum with _$Datum {
  factory Datum({
    String? id,
    String? userId,
    String? subscriptionPlanId,
    String? branchId,
    DateTime? startDate,
    DateTime? endDate,
    String? status,
    dynamic invoiceUrl,
    bool? isRenewal,
    dynamic previousSubscriptionId,
    dynamic cancelledAt,
    dynamic cancellationReason,
    dynamic cancelledBy,
    bool? autoRenew,
    DateTime? createdAt,
    DateTime? updatedAt,
    dynamic offerId,
    Branch? branch,
    SubscriptionPlan? subscriptionPlan,
  }) = _Datum;

  factory Datum.fromJson(Map<String, dynamic> json) => _$DatumFromJson(json);

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}
