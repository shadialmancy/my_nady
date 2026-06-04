// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Data _$DataFromJson(Map<String, dynamic> json) => _Data(
  message: json['message'] as String?,
  tokens: json['tokens'] == null
      ? null
      : Tokens.fromJson(json['tokens'] as Map<String, dynamic>),
);

Map<String, dynamic> _$DataToJson(_Data instance) => <String, dynamic>{
  'message': instance.message,
  'tokens': instance.tokens,
};
