// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favorite_gym_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_FavoriteGymDto _$FavoriteGymDtoFromJson(Map<String, dynamic> json) =>
    _FavoriteGymDto(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Datum.fromJson(e as Map<String, dynamic>))
          .toList(),
      meta: json['meta'] == null
          ? null
          : Meta.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$FavoriteGymDtoToJson(_FavoriteGymDto instance) =>
    <String, dynamic>{'data': instance.data, 'meta': instance.meta};
