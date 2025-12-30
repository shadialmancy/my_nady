// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: unused_local_variable

part of 'user_entity.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class UserAdapter extends TypeAdapter<UserEntity> {
  @override
  final typeId = 0;

  @override
  UserEntity read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return UserEntity();
  }

  @override
  void write(BinaryWriter writer, UserEntity obj) {
    writer.writeByte(0);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UserAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserEntity _$UserEntityFromJson(Map<String, dynamic> json) => _UserEntity(
  accessToken: json['access_token'] as String?,
  refreshToken: json['refresh_token'] as String?,
  user: json['user'] == null
      ? null
      : User.fromJson(json['user'] as Map<String, dynamic>),
  isEmailVerified: json['isEmailVerified'] as bool?,
);

Map<String, dynamic> _$UserEntityToJson(_UserEntity instance) =>
    <String, dynamic>{
      'access_token': instance.accessToken,
      'refresh_token': instance.refreshToken,
      'user': instance.user,
      'isEmailVerified': instance.isEmailVerified,
    };
