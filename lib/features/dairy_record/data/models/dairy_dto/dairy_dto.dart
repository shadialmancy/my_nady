import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entity/dairy_entity.dart';
import 'datum.dart';
import 'meta.dart';

part 'dairy_dto.freezed.dart';
part 'dairy_dto.g.dart';

@freezed
class DairyDto with _$DairyDto {
  factory DairyDto({List<DairyDatum>? data, DairyMeta? meta}) = _DairyDto;

  factory DairyDto.fromJson(Map<String, dynamic> json) =>
      _$DairyDtoFromJson(json);

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}

extension DairyDtoX on DairyDto {
  DairyEntity toEntity() => DairyEntity(data: data, meta: meta);
}
