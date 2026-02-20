import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/user_entity.dart';
import 'data.dart';
import 'meta.dart';

part 'user_dto.freezed.dart';
part 'user_dto.g.dart';

@freezed
class UserDto with _$UserDto {
  factory UserDto({Data? data, Meta? meta}) = _UserDto;

  factory UserDto.fromJson(Map<String, dynamic> json) =>
      _$UserDtoFromJson(json);

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}

extension UserDtoX on UserDto {
  UserEntity toEntity() => UserEntity(
    accessToken: data?.tokens?.accessToken,
    refreshToken: data?.tokens?.refreshToken,
    accessTokenExpiresAt: data?.tokens?.accessTokenExpiresAt.toString(),
    refreshTokenExpiresAt: data?.tokens?.refreshTokenExpiresAt.toString(),
    user: data?.user,
    isEmailVerified: false,
  );
}
