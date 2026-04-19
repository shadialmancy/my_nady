import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../data/repositories_impl/address_book_repository_impl.dart';
import '../entities/address_book_entity.dart';

part 'address_book_repository.g.dart';

@Riverpod(keepAlive: true)
class AddressBookRepository extends _$AddressBookRepository {
  @override
  FutureOr<void> build() {}

  final AddressBookRepositoryImpl _addressBookRepositoryImpl =
      AddressBookRepositoryImpl();

  Future<AddressBookEntity> getAddresses() async {
    try {
      return await _addressBookRepositoryImpl.getAddresses();
    } catch (e) {
      rethrow;
    }
  }

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
      await _addressBookRepositoryImpl.createAddress(
        label: label,
        country: country,
        city: city,
        address: address,
        latitude: latitude,
        longitude: longitude,
        isDefault: isDefault,
      );
    } catch (e) {
      rethrow;
    }
  }

  Future<void> updateAddress({
    required String id,
    String? label,
    String? country,
    String? city,
    String? address,
    bool? isDefault,
  }) async {
    try {
      await _addressBookRepositoryImpl.updateAddress(
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

  Future<void> deleteAddress(String id) async {
    try {
      await _addressBookRepositoryImpl.deleteAddress(id);
    } catch (e) {
      rethrow;
    }
  }

  Future<void> setDefaultAddress(String id) async {
    try {
      await _addressBookRepositoryImpl.setDefaultAddress(id);
    } catch (e) {
      rethrow;
    }
  }
}
