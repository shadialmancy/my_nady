// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_nady_project/features/authentication/domain/entities/user_entity.dart'
    show UserEntity;

import 'user.dart';

part 'user_dto.freezed.dart';
part 'user_dto.g.dart';

@freezed
class UserDto with _$UserDto {
  factory UserDto({
    @JsonKey(name: 'accessToken') String? accessToken,
    @JsonKey(name: 'refreshToken') String? refreshToken,
    @JsonKey(name: 'accessTokenExpiresAt') String? accessTokenExpiresAt,
    @JsonKey(name: 'refreshTokenExpiresAt') String? refreshTokenExpiresAt,
    User? user,
    bool? isEmailVerified,
  }) = _UserDto;

  factory UserDto.fromJson(Map<String, dynamic> json) =>
      _$UserDtoFromJson(json);

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}

extension UserDtoX on UserDto {
  UserEntity toEntity() => UserEntity(
    accessToken: accessToken,
    refreshToken: refreshToken,
    accessTokenExpiresAt: accessTokenExpiresAt,
    refreshTokenExpiresAt: refreshTokenExpiresAt,
    user: user,
    isEmailVerified: isEmailVerified,
  );
}
