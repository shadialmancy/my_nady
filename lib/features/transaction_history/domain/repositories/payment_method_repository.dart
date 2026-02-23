import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../data/repositories_impl/payment_method_repository_impl.dart';
import '../entities/payment_method_entity.dart';
import '../../data/models/payment_method_request_dto/payment_method_request_dto.dart';

part 'payment_method_repository.g.dart';

@Riverpod(keepAlive: true)
class PaymentMethodRepository extends _$PaymentMethodRepository {
  @override
  FutureOr<void> build() {}

  final PaymentMethodRepositoryImpl _paymentMethodRepositoryImpl =
      PaymentMethodRepositoryImpl();

  Future<PaymentMethodEntity?> getPaymentMethods() async {
    try {
      return await _paymentMethodRepositoryImpl.getPaymentMethods();
    } catch (e) {
      rethrow;
    }
  }

  Future<void> savePaymentMethod(PaymentMethodRequestDto request) async {
    try {
      await _paymentMethodRepositoryImpl.savePaymentMethod(request);
    } catch (e) {
      rethrow;
    }
  }

  Future<void> deletePaymentMethod(String id) async {
    try {
      await _paymentMethodRepositoryImpl.deletePaymentMethod(id);
    } catch (e) {
      rethrow;
    }
  }
}
