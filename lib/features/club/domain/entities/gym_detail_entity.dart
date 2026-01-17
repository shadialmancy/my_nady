import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_nady_project/features/club/data/models/gym_detail_dto/data.dart';

import '../../data/models/gym_detail_dto/meta.dart';

part 'gym_detail_entity.freezed.dart';
part 'gym_detail_entity.g.dart';

@freezed
class GymDetailEntity with _$GymDetailEntity {
  factory GymDetailEntity({Data? data, Meta? meta}) = _GymDetailEntity;

  factory GymDetailEntity.fromJson(Map<String, dynamic> json) =>
      _$GymDetailEntityFromJson(json);

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}
