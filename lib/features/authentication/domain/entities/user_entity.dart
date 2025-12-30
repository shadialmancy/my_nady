// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/adapters.dart';

import '../../data/models/user_dto/user.dart';

part 'user_entity.freezed.dart';
part 'user_entity.g.dart';

@HiveType(typeId: 0, adapterName: 'UserAdapter')
@freezed
class UserEntity with _$UserEntity {
  factory UserEntity({
    @HiveField(0) @JsonKey(name: 'access_token') String? accessToken,
    @HiveField(1) @JsonKey(name: 'refresh_token') String? refreshToken,
    User? user,
    @HiveField(2) bool? isEmailVerified,
  }) = _UserEntity;

  factory UserEntity.fromJson(Map<String, dynamic> json) =>
      _$UserEntityFromJson(json);

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}
