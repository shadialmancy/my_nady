import 'package:my_nady_project/features/address_book/domain/entities/address_book_entity.dart';

import '../datasource/address_book_datasource.dart';
import '../models/address_book_dto/address_book_dto.dart';

abstract class BaseAddressBookRepository {
  Future<AddressBookEntity> getAddresses();
  Future<void> createAddress({
    required String label,
    required String country,
    required String city,
    required double latitude,
    required double longitude,
    required String address,
    bool isDefault = false,
  });
  Future<void> updateAddress({
    required String id,
    String? label,
    String? country,
    String? city,
    String? address,
    double? latitude,
    double? longitude,
    bool? isDefault,
  });
  Future<void> deleteAddress(String id);
  Future<void> setDefaultAddress(String id);
}

class AddressBookRepositoryImpl implements BaseAddressBookRepository {
  final AddressBookDataSourceImpl dataSource = AddressBookDataSourceImpl();

  @override
  Future<AddressBookEntity> getAddresses() async {
    try {
      final dto = await dataSource.getAddresses();
      return dto.toEntity();
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<void> createAddress({
    required String label,
    required String country,
    required String city,
    required String address,
    required double latitude,
    required double longitude,
    bool isDefault = false,
  }) async {
    try {
      await dataSource.createAddress(
        label: label,
        country: country,
        city: city,
        address: address,
        isDefault: isDefault,
        latitude: latitude,
        longitude: longitude,
      );
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<void> updateAddress({
    required String id,
    String? label,
    String? country,
    String? city,
    String? address,
    double? latitude,
    double? longitude,
    bool? isDefault,
  }) async {
    try {
      await dataSource.updateAddress(
        id: id,
        label: label,
        country: country,
        city: city,
        address: address,
        isDefault: isDefault,
      );
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<void> deleteAddress(String id) async {
    try {
      await dataSource.deleteAddress(id);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<void> setDefaultAddress(String id) async {
    try {
      await dataSource.setDefaultAddress(id);
    } catch (e) {
      rethrow;
    }
  }
}
