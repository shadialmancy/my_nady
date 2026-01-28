import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/adapters.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  factory User({
    @HiveField(0) String? id,
    @HiveField(1) String? name,
    @HiveField(2) String? email,
    @HiveField(3) String? phone,
    @HiveField(4) dynamic emailVerified,
    @HiveField(5) dynamic image,
    @HiveField(6) dynamic birthDate,
    @HiveField(7) dynamic gender,
    @HiveField(8) String? role,
    @HiveField(9) String? status,
    @HiveField(10) DateTime? lastLoginAt,
    @HiveField(11) DateTime? lastActivityAt,
    @HiveField(12) num? loginCount,
    @HiveField(13) DateTime? createdAt,
    @HiveField(14) DateTime? updatedAt,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}

class UserInfoAdapter extends TypeAdapter<User> {
  @override
  final typeId = 1;

  @override
  User read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return User(
      id: fields[0] as String?,
      name: fields[1] as String?,
      email: fields[2] as String?,
      phone: fields[3] as String?,
      emailVerified: fields[4],
      image: fields[5],
      birthDate: fields[6],
      gender: fields[7],
      role: fields[8] as String?,
      status: fields[9] as String?,
      lastLoginAt: fields[10] as DateTime?,
      lastActivityAt: fields[11] as DateTime?,
      loginCount: fields[12] as num?,
      createdAt: fields[13] as DateTime?,
      updatedAt: fields[14] as DateTime?,
    );
  }

  @override
  void write(BinaryWriter writer, User obj) {
    writer
      ..writeByte(15)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.email)
      ..writeByte(3)
      ..write(obj.phone)
      ..writeByte(4)
      ..write(obj.emailVerified)
      ..writeByte(5)
      ..write(obj.image)
      ..writeByte(6)
      ..write(obj.birthDate)
      ..writeByte(7)
      ..write(obj.gender)
      ..writeByte(8)
      ..write(obj.role)
      ..writeByte(9)
      ..write(obj.status)
      ..writeByte(10)
      ..write(obj.lastLoginAt)
      ..writeByte(11)
      ..write(obj.lastActivityAt)
      ..writeByte(12)
      ..write(obj.loginCount)
      ..writeByte(13)
      ..write(obj.createdAt)
      ..writeByte(14)
      ..write(obj.updatedAt);
  }
}
