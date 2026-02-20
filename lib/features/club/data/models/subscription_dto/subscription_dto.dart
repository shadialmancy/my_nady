import 'package:freezed_annotation/freezed_annotation.dart';

import 'datum.dart';
import 'meta.dart';

part 'subscription_dto.freezed.dart';
part 'subscription_dto.g.dart';

@freezed
class SubscriptionDto with _$SubscriptionDto {
  factory SubscriptionDto({List<Datum>? data, Meta? meta}) = _SubscriptionDto;

  factory SubscriptionDto.fromJson(Map<String, dynamic> json) =>
      _$SubscriptionDtoFromJson(json);

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}
