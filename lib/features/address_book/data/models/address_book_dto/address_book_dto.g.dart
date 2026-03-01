// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address_book_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AddressBookDto _$AddressBookDtoFromJson(Map<String, dynamic> json) =>
    _AddressBookDto(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => AddressData.fromJson(e as Map<String, dynamic>))
          .toList(),
      meta: json['meta'] == null
          ? null
          : Meta.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AddressBookDtoToJson(_AddressBookDto instance) =>
    <String, dynamic>{'data': instance.data, 'meta': instance.meta};
