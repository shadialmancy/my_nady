import 'package:freezed_annotation/freezed_annotation.dart';
import '../../data/models/payment_method_dto/datum.dart';
import '../../data/models/payment_method_dto/meta.dart';

part 'payment_method_entity.freezed.dart';
part 'payment_method_entity.g.dart';

@freezed
class PaymentMethodEntity with _$PaymentMethodEntity {
  factory PaymentMethodEntity({List<Datum>? paymentMethods, Meta? meta}) =
      _PaymentMethodEntity;

  factory PaymentMethodEntity.fromJson(Map<String, dynamic> json) =>
      _$PaymentMethodEntityFromJson(json);

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}
