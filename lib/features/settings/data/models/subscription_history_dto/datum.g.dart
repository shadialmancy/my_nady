// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'datum.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Datum _$DatumFromJson(Map<String, dynamic> json) => _Datum(
  subscriptionId: json['subscriptionId'] as String?,
  branchName: json['branchName'] as String?,
  planName: json['planName'] as String?,
  currentStatus: json['currentStatus'] as String?,
  history: (json['history'] as List<dynamic>?)
      ?.map((e) => History.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$DatumToJson(_Datum instance) => <String, dynamic>{
  'subscriptionId': instance.subscriptionId,
  'branchName': instance.branchName,
  'planName': instance.planName,
  'currentStatus': instance.currentStatus,
  'history': instance.history,
};
