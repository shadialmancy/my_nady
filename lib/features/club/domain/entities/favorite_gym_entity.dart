import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/models/favorite_gym_dto/datum.dart';
import '../../data/models/favorite_gym_dto/meta.dart';

part 'favorite_gym_entity.freezed.dart';
part 'favorite_gym_entity.g.dart';

@freezed
class FavoriteGymEntity with _$FavoriteGymEntity {
  factory FavoriteGymEntity({List<Datum>? data, Meta? meta}) =
      _FavoriteGymEntity;

  factory FavoriteGymEntity.fromJson(Map<String, dynamic> json) =>
      _$FavoriteGymEntityFromJson(json);

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}
