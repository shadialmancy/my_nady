// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favorite_gym_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_FavoriteGymEntity _$FavoriteGymEntityFromJson(Map<String, dynamic> json) =>
    _FavoriteGymEntity(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Datum.fromJson(e as Map<String, dynamic>))
          .toList(),
      meta: json['meta'] == null
          ? null
          : Meta.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$FavoriteGymEntityToJson(_FavoriteGymEntity instance) =>
    <String, dynamic>{'data': instance.data, 'meta': instance.meta};
