import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/models/dairy_dto/datum.dart';
import '../../data/models/dairy_dto/meta.dart';

part 'dairy_entity.freezed.dart';
part 'dairy_entity.g.dart';

@freezed
class DairyEntity with _$DairyEntity {
  factory DairyEntity({List<DairyDatum>? data, DairyMeta? meta}) = _DairyEntity;

  factory DairyEntity.fromJson(Map<String, dynamic> json) =>
      _$DairyEntityFromJson(json);

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}
