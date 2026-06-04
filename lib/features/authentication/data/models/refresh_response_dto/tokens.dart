import 'package:freezed_annotation/freezed_annotation.dart';

part 'tokens.freezed.dart';
part 'tokens.g.dart';

@freezed
class Tokens with _$Tokens {
  factory Tokens({
    String? accessToken,
    String? refreshToken,
    DateTime? accessTokenExpiresAt,
    DateTime? refreshTokenExpiresAt,
  }) = _Tokens;

  factory Tokens.fromJson(Map<String, dynamic> json) => _$TokensFromJson(json);

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}
