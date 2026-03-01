import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../domain/entities/payment_method_entity.dart';
import 'datum.dart';
import 'meta.dart';

part 'payment_method_dto.freezed.dart';
part 'payment_method_dto.g.dart';

@freezed
class PaymentMethodDto with _$PaymentMethodDto {
  factory PaymentMethodDto({List<Datum>? data, Meta? meta}) = _PaymentMethodDto;

  factory PaymentMethodDto.fromJson(Map<String, dynamic> json) =>
      _$PaymentMethodDtoFromJson(json);

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}

extension PaymentMethodDtoX on PaymentMethodDto {
  PaymentMethodEntity toEntity() =>
      PaymentMethodEntity(paymentMethods: data, meta: meta);
}
