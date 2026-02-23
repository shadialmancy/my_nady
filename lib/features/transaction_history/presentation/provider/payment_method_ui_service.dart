import 'package:my_nady_project/features/transaction_history/domain/entities/payment_method_entity.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../../features/transaction_history/domain/repositories/payment_method_repository.dart';
import '../../data/models/payment_method_request_dto/payment_method_request_dto.dart';
import '../../../../core/shared/widgets/app_toast.dart';

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
    final previous = state.value;
    state = const AsyncValue.loading();
    try {
      final repository = ref.read(paymentMethodRepositoryProvider.notifier);
      await repository.savePaymentMethod(request);
      final refreshed = await repository.getPaymentMethods();
      state = AsyncValue.data(refreshed);
    } catch (e, st) {
      state = AsyncValue.data(previous);
      AppToast.errorToast(e.toString());
      Error.throwWithStackTrace(e, st);
    }
  }

  Future<void> deletePaymentMethod(String id) async {
    final previous = state.value;

    // Optimistically remove from UI (avoid blocking the whole screen)
    if (previous?.paymentMethods != null) {
      final updated = previous!.copyWith(
        paymentMethods: previous.paymentMethods!
            .where((m) => m.id != id)
            .toList(),
      );
      state = AsyncValue.data(updated);
    }

    try {
      final repository = ref.read(paymentMethodRepositoryProvider.notifier);
      await repository.deletePaymentMethod(id);
      // Use English localization for toast; UI context not available here.
      AppToast.successToast('Card deleted successfully');

      // Ensure server truth
      final refreshed = await repository.getPaymentMethods();
      state = AsyncValue.data(refreshed);
    } catch (e, st) {
      state = AsyncValue.data(previous);
      AppToast.errorToast(e.toString());
      Error.throwWithStackTrace(e, st);
    }
  }
}
