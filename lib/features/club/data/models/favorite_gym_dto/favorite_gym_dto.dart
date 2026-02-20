import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/favorite_gym_entity.dart';
import 'datum.dart';
import 'meta.dart';

part 'favorite_gym_dto.freezed.dart';
part 'favorite_gym_dto.g.dart';

@freezed
class FavoriteGymDto with _$FavoriteGymDto {
  factory FavoriteGymDto({List<Datum>? data, Meta? meta}) = _FavoriteGymDto;

  factory FavoriteGymDto.fromJson(Map<String, dynamic> json) =>
      _$FavoriteGymDtoFromJson(json);

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}

extension FavoriteGymDtoX on FavoriteGymDto {
  FavoriteGymEntity toEntity() => FavoriteGymEntity(data: data, meta: meta);
}
