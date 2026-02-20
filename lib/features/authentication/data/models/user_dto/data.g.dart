// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Data _$DataFromJson(Map<String, dynamic> json) => _Data(
  user: json['user'] == null
      ? null
      : User.fromJson(json['user'] as Map<String, dynamic>),
  tokens: json['tokens'] == null
      ? null
      : Tokens.fromJson(json['tokens'] as Map<String, dynamic>),
);

Map<String, dynamic> _$DataToJson(_Data instance) => <String, dynamic>{
  'user': instance.user,
  'tokens': instance.tokens,
};
