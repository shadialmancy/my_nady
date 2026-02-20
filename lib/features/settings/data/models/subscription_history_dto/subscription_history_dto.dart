import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_nady_project/features/settings/domain/entities/subscription_history_entity.dart';

import 'datum.dart';
import 'meta.dart';

part 'subscription_history_dto.freezed.dart';
part 'subscription_history_dto.g.dart';

@freezed
class SubscriptionHistoryDto with _$SubscriptionHistoryDto {
  factory SubscriptionHistoryDto({List<Datum>? data, Meta? meta}) =
      _SubscriptionHistoryDto;

  factory SubscriptionHistoryDto.fromJson(Map<String, dynamic> json) =>
      _$SubscriptionHistoryDtoFromJson(json);

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}

extension SubscriptionHistoryDtoX on SubscriptionHistoryDto {
  SubscriptionHistoryEntity toEntity() =>
      SubscriptionHistoryEntity(data: data, meta: meta);
}
