import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/models/refresh_response_dto/data.dart';
import '../../data/models/refresh_response_dto/meta.dart';

part 'refresh_response_entity.freezed.dart';
part 'refresh_response_entity.g.dart';

@freezed
class RefreshResponseEntity with _$RefreshResponseEntity {
  factory RefreshResponseEntity({Data? data, Meta? meta}) =
      _RefreshResponseEntity;

  factory RefreshResponseEntity.fromJson(Map<String, dynamic> json) =>
      _$RefreshResponseEntityFromJson(json);

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}
