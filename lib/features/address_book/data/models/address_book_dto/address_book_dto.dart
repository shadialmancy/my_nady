import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_nady_project/features/address_book/domain/entities/address_book_entity.dart';

import 'address_data.dart';
import 'meta.dart';

part 'address_book_dto.freezed.dart';
part 'address_book_dto.g.dart';

@freezed
class AddressBookDto with _$AddressBookDto {
  factory AddressBookDto({List<AddressData>? data, Meta? meta}) =
      _AddressBookDto;

  factory AddressBookDto.fromJson(Map<String, dynamic> json) =>
      _$AddressBookDtoFromJson(json);

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}

extension AddressBookDtoX on AddressBookDto {
  AddressBookEntity toEntity() => AddressBookEntity(data: data, meta: meta);
}
