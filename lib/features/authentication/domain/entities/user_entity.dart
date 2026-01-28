// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/adapters.dart';

import '../../data/models/user_dto/user.dart';

part 'user_entity.freezed.dart';
part 'user_entity.g.dart';

@freezed
class UserEntity with _$UserEntity {
  factory UserEntity({
    @HiveField(0) @JsonKey(name: 'access_token') String? accessToken,
    @HiveField(1) @JsonKey(name: 'refresh_token') String? refreshToken,
    @HiveField(2) bool? isEmailVerified,
    @HiveField(3) String? accessTokenExpiresAt,
    @HiveField(4) String? refreshTokenExpiresAt,
    @HiveField(5) User? user,
  }) = _UserEntity;

  factory UserEntity.fromJson(Map<String, dynamic> json) =>
      _$UserEntityFromJson(json);

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}

class UserAdapter extends TypeAdapter<UserEntity> {
  @override
  final typeId = 0;

  @override
  UserEntity read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return UserEntity(
      accessToken: fields[0] as String?,
      refreshToken: fields[1] as String?,
      isEmailVerified: fields[2] as bool?,
      accessTokenExpiresAt: fields[3] as String?,
      refreshTokenExpiresAt: fields[4] as String?,
      user: fields[5] as User?,
    );
  }

  @override
  void write(BinaryWriter writer, UserEntity obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.accessToken)
      ..writeByte(1)
      ..write(obj.refreshToken)
      ..writeByte(2)
      ..write(obj.isEmailVerified)
      ..writeByte(3)
      ..write(obj.accessTokenExpiresAt)
      ..writeByte(4)
      ..write(obj.refreshTokenExpiresAt)
      ..writeByte(5)
      ..write(obj.user);
  }
}
