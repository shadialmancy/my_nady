// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: unused_local_variable

part of 'user.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class UserInfoAdapter extends TypeAdapter<User> {
  @override
  final typeId = 1;

  @override
  User read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return User();
  }

  @override
  void write(BinaryWriter writer, User obj) {
    writer.writeByte(0);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UserInfoAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_User _$UserFromJson(Map<String, dynamic> json) => _User(
  id: json['id'] as String?,
  name: json['name'] as String?,
  email: json['email'] as String?,
  phone: json['phone'] as String?,
  emailVerified: json['emailVerified'],
  image: json['image'],
  birthDate: json['birthDate'],
  gender: json['gender'],
  role: json['role'] as String?,
  status: json['status'] as String?,
  lastLoginAt: json['lastLoginAt'] == null
      ? null
      : DateTime.parse(json['lastLoginAt'] as String),
  lastActivityAt: json['lastActivityAt'] == null
      ? null
      : DateTime.parse(json['lastActivityAt'] as String),
  loginCount: json['loginCount'] as num?,
  createdAt: json['createdAt'] == null
      ? null
      : DateTime.parse(json['createdAt'] as String),
  updatedAt: json['updatedAt'] == null
      ? null
      : DateTime.parse(json['updatedAt'] as String),
);

Map<String, dynamic> _$UserToJson(_User instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'email': instance.email,
  'phone': instance.phone,
  'emailVerified': instance.emailVerified,
  'image': instance.image,
  'birthDate': instance.birthDate,
  'gender': instance.gender,
  'role': instance.role,
  'status': instance.status,
  'lastLoginAt': instance.lastLoginAt?.toIso8601String(),
  'lastActivityAt': instance.lastActivityAt?.toIso8601String(),
  'loginCount': instance.loginCount,
  'createdAt': instance.createdAt?.toIso8601String(),
  'updatedAt': instance.updatedAt?.toIso8601String(),
};
