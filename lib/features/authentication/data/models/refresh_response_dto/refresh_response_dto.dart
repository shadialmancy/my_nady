import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/refresh_response_entity.dart';
import 'data.dart';
import 'meta.dart';

part 'refresh_response_dto.freezed.dart';
part 'refresh_response_dto.g.dart';

@freezed
class RefreshResponseDto with _$RefreshResponseDto {
  factory RefreshResponseDto({Data? data, Meta? meta}) = _RefreshResponseDto;

  factory RefreshResponseDto.fromJson(Map<String, dynamic> json) =>
      _$RefreshResponseDtoFromJson(json);

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}

extension RefreshResponseDtoX on RefreshResponseDto {
  RefreshResponseEntity toEntity() =>
      RefreshResponseEntity(data: data, meta: meta);
}
