import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/club_entity.dart';
import 'data.dart';
import 'meta.dart';

part 'club_dto.freezed.dart';
part 'club_dto.g.dart';

@freezed
class ClubDto with _$ClubDto {
  factory ClubDto({Data? data, Meta? meta}) = _ClubDto;

  factory ClubDto.fromJson(Map<String, dynamic> json) =>
      _$ClubDtoFromJson(json);
  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}

extension ClubDtoX on ClubDto {
  ClubEntity toEntity() =>
      ClubEntity(clubs: data?.data, meta: meta ?? data?.meta);
}
