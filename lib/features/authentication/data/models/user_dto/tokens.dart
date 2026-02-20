import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'tokens.freezed.dart';
part 'tokens.g.dart';

@freezed
class Tokens with _$Tokens {
  factory Tokens({
    @HiveField(0) String? accessToken,
    @HiveField(1) String? refreshToken,
    @HiveField(2) DateTime? accessTokenExpiresAt,
    @HiveField(3) DateTime? refreshTokenExpiresAt,
  }) = _Tokens;

  factory Tokens.fromJson(Map<String, dynamic> json) => _$TokensFromJson(json);

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}

class TokensAdapter extends TypeAdapter<Tokens> {
  @override
  final int typeId = 2;

  @override
  Tokens read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Tokens(
      accessToken: fields[0] as String?,
      refreshToken: fields[1] as String?,
      accessTokenExpiresAt: fields[2] as DateTime?,
      refreshTokenExpiresAt: fields[3] as DateTime?,
    );
  }

  @override
  void write(BinaryWriter writer, Tokens obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.accessToken)
      ..writeByte(1)
      ..write(obj.refreshToken)
      ..writeByte(2)
      ..write(obj.accessTokenExpiresAt)
      ..writeByte(3)
      ..write(obj.refreshTokenExpiresAt);
  }
}
