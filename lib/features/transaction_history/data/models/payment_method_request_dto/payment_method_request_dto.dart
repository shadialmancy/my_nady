import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_method_request_dto.freezed.dart';
part 'payment_method_request_dto.g.dart';

@freezed
class PaymentMethodRequestDto with _$PaymentMethodRequestDto {
  factory PaymentMethodRequestDto({
    required String gatewayCardId,
    required String cardBrand,
    required String last4Digits,
    required int expiryMonth,
    required int expiryYear,
    required String cardholderName,
    required String gatewayCustomerId,
  }) = _PaymentMethodRequestDto;

  factory PaymentMethodRequestDto.fromJson(Map<String, dynamic> json) =>
      _$PaymentMethodRequestDtoFromJson(json);

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}
