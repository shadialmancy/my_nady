import 'package:freezed_annotation/freezed_annotation.dart';

import 'location.dart';

part 'address_data.freezed.dart';
part 'address_data.g.dart';

@freezed
class AddressData with _$AddressData {
  factory AddressData({
    Location? location,
    String? id,
    String? userId,
    String? label,
    double? latitude,
    double? longitude,
    bool? isDefault,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _AddressData;

  factory AddressData.fromJson(Map<String, dynamic> json) =>
      _$AddressDataFromJson(json);

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}
