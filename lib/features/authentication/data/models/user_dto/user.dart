import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/adapters.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@HiveType(typeId: 1, adapterName: 'UserInfoAdapter')
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
