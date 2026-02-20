import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_nady_project/features/settings/domain/entities/subscription_current_entity.dart';

import 'datum.dart';
import 'meta.dart';

part 'subscription_current_dto.freezed.dart';
part 'subscription_current_dto.g.dart';

@freezed
class SubscriptionCurrentDto with _$SubscriptionCurrentDto {
  factory SubscriptionCurrentDto({List<Datum>? data, Meta? meta}) =
      _SubscriptionCurrentDto;

  factory SubscriptionCurrentDto.fromJson(Map<String, dynamic> json) =>
      _$SubscriptionCurrentDtoFromJson(json);

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}

extension SubscriptionCurrentDtoX on SubscriptionCurrentDto {
  SubscriptionCurrentEntity toEntity() =>
      SubscriptionCurrentEntity(data: data, meta: meta);
}
