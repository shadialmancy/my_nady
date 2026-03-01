// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address_book_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AddressBookEntity _$AddressBookEntityFromJson(Map<String, dynamic> json) =>
    _AddressBookEntity(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => AddressData.fromJson(e as Map<String, dynamic>))
          .toList(),
      meta: json['meta'] == null
          ? null
          : Meta.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AddressBookEntityToJson(_AddressBookEntity instance) =>
    <String, dynamic>{'data': instance.data, 'meta': instance.meta};
