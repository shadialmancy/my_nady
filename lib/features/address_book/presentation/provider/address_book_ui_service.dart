import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../../core/shared/widgets/app_toast.dart';
import '../../domain/entities/address_book_entity.dart';
import '../../data/models/address_book_dto/address_data.dart';
import '../../domain/repositories/address_book_repository.dart';

part 'address_book_ui_service.g.dart';

@Riverpod(keepAlive: true)
class AddressBookUiService extends _$AddressBookUiService {
  @override
  FutureOr<AddressBookEntity?> build() async {
    return await fetchAddresses();
  }

  Future<AddressBookEntity?> fetchAddresses() async {
    state = const AsyncValue.loading();
    try {
      final repository = ref.read(addressBookRepositoryProvider.notifier);
      final addresses = await repository.getAddresses();
      state = AsyncValue.data(addresses);
      return addresses;
    } catch (e, st) {
      state = AsyncValue.error(e, st);
      AppToast.errorToast(e.toString());
      return null;
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
      state = const AsyncValue.loading();
      final repository = ref.read(addressBookRepositoryProvider.notifier);
      await repository.createAddress(
        label: label,
        country: country,
        city: city,
        address: address,
        latitude: latitude,
        longitude: longitude,
        isDefault: isDefault,
      );
      await fetchAddresses();
      AppToast.successToast('Address added successfully');
    } catch (e) {
      final previousData = state.value;
      state = AsyncValue.data(previousData);
      AppToast.errorToast(e.toString());
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
      state = const AsyncValue.loading();
      final repository = ref.read(addressBookRepositoryProvider.notifier);
      await repository.updateAddress(
        id: id,
        label: label,
        country: country,
        city: city,
        address: address,
        isDefault: isDefault,
      );
      await fetchAddresses();
      AppToast.successToast('Address updated successfully');
    } catch (e) {
      final previousData = state.value;
      state = AsyncValue.data(previousData);
      AppToast.errorToast(e.toString());
      rethrow;
    }
  }

  Future<void> deleteAddress(String id) async {
    try {
      state = const AsyncValue.loading();
      final repository = ref.read(addressBookRepositoryProvider.notifier);
      await repository.deleteAddress(id);
      await fetchAddresses();
      AppToast.successToast('Address deleted successfully');
    } catch (e) {
      final previousData = state.value;
      state = AsyncValue.data(previousData);
      AppToast.errorToast(e.toString());
    }
  }

  Future<void> setDefaultAddress(String id) async {
    try {
      state = const AsyncValue.loading();
      final repository = ref.read(addressBookRepositoryProvider.notifier);
      await repository.setDefaultAddress(id);
      await fetchAddresses();
      AppToast.successToast('Default address set successfully');
    } catch (e) {
      final previousData = state.value;
      state = AsyncValue.data(previousData);
      AppToast.errorToast(e.toString());
    }
  }
}

@riverpod
AddressData? defaultAddress(Ref ref) {
  final addressBook = ref.watch(addressBookUiServiceProvider).value;
  if (addressBook == null ||
      addressBook.data == null ||
      addressBook.data!.isEmpty) {
    return null;
  }
  try {
    return addressBook.data!.firstWhere((address) => address.isDefault == true);
  } catch (_) {
    return addressBook.data!.first;
  }
}
