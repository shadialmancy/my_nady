import 'package:my_nady_project/features/transaction_history/domain/entities/payment_method_entity.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../../features/transaction_history/domain/repositories/payment_method_repository.dart';
import '../../data/models/payment_method_request_dto/payment_method_request_dto.dart';

part 'payment_method_ui_service.g.dart';

@Riverpod(keepAlive: true)
class PaymentMethodUiService extends _$PaymentMethodUiService {
  @override
  FutureOr<PaymentMethodEntity?> build() {
    return null;
  }

  Future<PaymentMethodEntity?> fetchPaymentMethods() async {
    state = const AsyncValue.loading();
    try {
      final repository = ref.read(paymentMethodRepositoryProvider.notifier);
      final results = await repository.getPaymentMethods();
      state = AsyncValue.data(results);
      return results;
    } catch (e, st) {
      state = AsyncValue.error(e, st);
      rethrow;
    }
  }

  Future<void> savePaymentMethod(PaymentMethodRequestDto request) async {
    state = const AsyncValue.loading();
    try {
      final repository = ref.read(paymentMethodRepositoryProvider.notifier);
      await repository.savePaymentMethod(request);
      // Refresh the payment methods list after saving
    } catch (e, st) {
      state = AsyncValue.error(e, st);
      rethrow;
    }
  }
}
