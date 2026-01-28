// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserEntity _$UserEntityFromJson(Map<String, dynamic> json) => _UserEntity(
  accessToken: json['access_token'] as String?,
  refreshToken: json['refresh_token'] as String?,
  isEmailVerified: json['isEmailVerified'] as bool?,
  accessTokenExpiresAt: json['accessTokenExpiresAt'] as String?,
  refreshTokenExpiresAt: json['refreshTokenExpiresAt'] as String?,
  user: json['user'] == null
      ? null
      : User.fromJson(json['user'] as Map<String, dynamic>),
);

Map<String, dynamic> _$UserEntityToJson(_UserEntity instance) =>
    <String, dynamic>{
      'access_token': instance.accessToken,
      'refresh_token': instance.refreshToken,
      'isEmailVerified': instance.isEmailVerified,
      'accessTokenExpiresAt': instance.accessTokenExpiresAt,
      'refreshTokenExpiresAt': instance.refreshTokenExpiresAt,
      'user': instance.user,
    };
