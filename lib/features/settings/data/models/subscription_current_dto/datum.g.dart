// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'datum.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Datum _$DatumFromJson(Map<String, dynamic> json) => _Datum(
  id: json['id'] as String?,
  userId: json['userId'] as String?,
  subscriptionPlanId: json['subscriptionPlanId'] as String?,
  branchId: json['branchId'] as String?,
  startDate: json['startDate'] == null
      ? null
      : DateTime.parse(json['startDate'] as String),
  endDate: json['endDate'] == null
      ? null
      : DateTime.parse(json['endDate'] as String),
  status: json['status'] as String?,
  invoiceUrl: json['invoiceUrl'],
  isRenewal: json['isRenewal'] as bool?,
  previousSubscriptionId: json['previousSubscriptionId'],
  cancelledAt: json['cancelledAt'],
  cancellationReason: json['cancellationReason'],
  cancelledBy: json['cancelledBy'],
  autoRenew: json['autoRenew'] as bool?,
  createdAt: json['createdAt'] == null
      ? null
      : DateTime.parse(json['createdAt'] as String),
  updatedAt: json['updatedAt'] == null
      ? null
      : DateTime.parse(json['updatedAt'] as String),
  offerId: json['offerId'],
  branch: json['branch'] == null
      ? null
      : Branch.fromJson(json['branch'] as Map<String, dynamic>),
  subscriptionPlan: json['subscriptionPlan'] == null
      ? null
      : SubscriptionPlan.fromJson(
          json['subscriptionPlan'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic> _$DatumToJson(_Datum instance) => <String, dynamic>{
  'id': instance.id,
  'userId': instance.userId,
  'subscriptionPlanId': instance.subscriptionPlanId,
  'branchId': instance.branchId,
  'startDate': instance.startDate?.toIso8601String(),
  'endDate': instance.endDate?.toIso8601String(),
  'status': instance.status,
  'invoiceUrl': instance.invoiceUrl,
  'isRenewal': instance.isRenewal,
  'previousSubscriptionId': instance.previousSubscriptionId,
  'cancelledAt': instance.cancelledAt,
  'cancellationReason': instance.cancellationReason,
  'cancelledBy': instance.cancelledBy,
  'autoRenew': instance.autoRenew,
  'createdAt': instance.createdAt?.toIso8601String(),
  'updatedAt': instance.updatedAt?.toIso8601String(),
  'offerId': instance.offerId,
  'branch': instance.branch,
  'subscriptionPlan': instance.subscriptionPlan,
};
