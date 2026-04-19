// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'club_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ClubEntity _$ClubEntityFromJson(Map<String, dynamic> json) => _ClubEntity(
  clubs: (json['clubs'] as List<dynamic>?)
      ?.map((e) => Datum.fromJson(e as Map<String, dynamic>))
      .toList(),
  meta: json['meta'] == null
      ? null
      : Meta.fromJson(json['meta'] as Map<String, dynamic>),
  isSuggestion: json['isSuggestion'] as bool?,
);

Map<String, dynamic> _$ClubEntityToJson(_ClubEntity instance) =>
    <String, dynamic>{
      'clubs': instance.clubs,
      'meta': instance.meta,
      'isSuggestion': instance.isSuggestion,
    };
