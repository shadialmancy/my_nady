import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_nady_project/features/address_book/data/models/address_book_dto/meta.dart';

import '../../data/models/address_book_dto/address_data.dart';

part 'address_book_entity.freezed.dart';
part 'address_book_entity.g.dart';

@freezed
class AddressBookEntity with _$AddressBookEntity {
  factory AddressBookEntity({List<AddressData>? data, Meta? meta}) =
      _AddressBookEntity;

  factory AddressBookEntity.fromJson(Map<String, dynamic> json) =>
      _$AddressBookEntityFromJson(json);

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}
