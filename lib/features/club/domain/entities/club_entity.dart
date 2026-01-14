import 'package:freezed_annotation/freezed_annotation.dart';
import '../../data/models/club_dto/datum.dart';
import '../../data/models/club_dto/meta.dart';

part 'club_entity.freezed.dart';
part 'club_entity.g.dart';

@freezed
class ClubEntity with _$ClubEntity {
  factory ClubEntity({List<Datum>? clubs, Meta? meta}) = _ClubEntity;

  factory ClubEntity.fromJson(Map<String, dynamic> json) =>
      _$ClubEntityFromJson(json);

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}
