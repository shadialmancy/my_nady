// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserDto _$UserDtoFromJson(Map<String, dynamic> json) => _UserDto(
  accessToken: json['accessToken'] as String?,
  refreshToken: json['refreshToken'] as String?,
  accessTokenExpiresAt: json['accessTokenExpiresAt'] as String?,
  refreshTokenExpiresAt: json['refreshTokenExpiresAt'] as String?,
  user: json['user'] == null
      ? null
      : User.fromJson(json['user'] as Map<String, dynamic>),
  isEmailVerified: json['isEmailVerified'] as bool?,
);

Map<String, dynamic> _$UserDtoToJson(_UserDto instance) => <String, dynamic>{
  'accessToken': instance.accessToken,
  'refreshToken': instance.refreshToken,
  'accessTokenExpiresAt': instance.accessTokenExpiresAt,
  'refreshTokenExpiresAt': instance.refreshTokenExpiresAt,
  'user': instance.user,
  'isEmailVerified': instance.isEmailVerified,
};
