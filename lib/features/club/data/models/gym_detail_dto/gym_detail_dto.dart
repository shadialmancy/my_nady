import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_nady_project/features/club/domain/entities/gym_detail_entity.dart';

import 'data.dart';
import 'meta.dart';

part 'gym_detail_dto.freezed.dart';
part 'gym_detail_dto.g.dart';

@freezed
class GymDetailDto with _$GymDetailDto {
  factory GymDetailDto({Data? data, Meta? meta}) = _GymDetailDto;

  factory GymDetailDto.fromJson(Map<String, dynamic> json) =>
      _$GymDetailDtoFromJson(json);

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}

extension GymDetailDtoX on GymDetailDto {
  GymDetailEntity toEntity() => GymDetailEntity(data: data, meta: meta);
}
