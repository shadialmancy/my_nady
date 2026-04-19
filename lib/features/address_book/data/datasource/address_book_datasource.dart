import 'dart:developer';

import 'package:my_nady_project/core/api/apis.dart';
import 'package:my_nady_project/core/constants/app_constants.dart';
import 'package:my_nady_project/features/authentication/data/models/error_model/error_model.dart';
import 'package:my_nady_project/features/address_book/data/models/address_book_dto/address_book_dto.dart';

abstract class AddressBookDataSource {
  Future<AddressBookDto> getAddresses();
  Future<void> createAddress({
    required String label,
    required String country,
    required String city,
    required String address,
    required double latitude,
    required double longitude,
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

class AddressBookDataSourceImpl implements AddressBookDataSource {
  @override
  Future<AddressBookDto> getAddresses() async {
    final response = await DioClient().dio.get(AppConstants.addressBookApiUrl);

    if (response.statusCode == 200) {
      return AddressBookDto.fromJson(response.data);
    } else {
      final errorModel = ErrorModel.fromJson(response.data);
      throw errorModel.message ?? 'Error in getAddresses';
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
    log("latitude: ${latitude.toString()}");
    log("longitude: ${longitude.toString()}");
    final response = await DioClient().dio.post(
      AppConstants.addressBookApiUrl,
      data: {
        "label": label,
        "location": {"country": country, "city": city, "address": address},
        "isDefault": isDefault,
        "latitude": latitude,
        "longitude": longitude,
      },
    );

    if (response.statusCode == 200 || response.statusCode == 201) {
      return;
    } else {
      final errorModel = ErrorModel.fromJson(response.data);
      throw errorModel.message ?? 'Error in createAddress';
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
    final Map<String, dynamic> location = {};
    if (country != null) location["country"] = country;
    if (city != null) location["city"] = city;
    if (address != null) location["address"] = address;

    final Map<String, dynamic> data = {};
    if (label != null) data["label"] = label;
    if (location.isNotEmpty) data["location"] = location;
    if (isDefault != null) data["isDefault"] = isDefault;

    final response = await DioClient().dio.patch(
      '${AppConstants.addressBookApiUrl}/$id',
      data: data,
    );

    if (response.statusCode == 200 || response.statusCode == 204) {
      return;
    } else {
      final errorModel = ErrorModel.fromJson(response.data);
      throw errorModel.message ?? 'Error in updateAddress';
    }
  }

  @override
  Future<void> deleteAddress(String id) async {
    final response = await DioClient().dio.delete(
      '${AppConstants.addressBookApiUrl}/$id',
      data: {},
    );

    if (response.statusCode == 200 || response.statusCode == 204) {
      return;
    } else {
      final errorModel = ErrorModel.fromJson(response.data);
      throw errorModel.message ?? 'Error in deleteAddress';
    }
  }

  @override
  Future<void> setDefaultAddress(String id) async {
    final response = await DioClient().dio.patch(
      '${AppConstants.addressBookApiUrl}/$id/default',
      data: {},
    );

    if (response.statusCode == 200 || response.statusCode == 204) {
      return;
    } else {
      final errorModel = ErrorModel.fromJson(response.data);
      throw errorModel.message ?? 'Error in setDefaultAddress';
    }
  }
}
