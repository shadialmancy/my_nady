import 'package:freezed_annotation/freezed_annotation.dart';

part 'datum.freezed.dart';
part 'datum.g.dart';

@freezed
class Datum with _$Datum {
  factory Datum({
    String? id,
    String? gatewayCardId,
    String? cardBrand,
    String? last4Digits,
    int? expiryMonth,
    int? expiryYear,
    String? cardholderName,
    String? gatewayCustomerId,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _Datum;

  factory Datum.fromJson(Map<String, dynamic> json) => _$DatumFromJson(json);

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}
