import '../../domain/entities/payment_method_entity.dart';
import '../datasource/payment_method_datasource.dart';
import '../models/payment_method_dto/payment_method_dto.dart';
import '../models/payment_method_request_dto/payment_method_request_dto.dart';

abstract class BasePaymentMethodRepository {
  Future<PaymentMethodEntity> getPaymentMethods();
  Future<void> savePaymentMethod(PaymentMethodRequestDto request);
}

class PaymentMethodRepositoryImpl implements BasePaymentMethodRepository {
  final PaymentMethodDataSourceImpl dataSource = PaymentMethodDataSourceImpl();

  @override
  Future<PaymentMethodEntity> getPaymentMethods() async {
    try {
      return await dataSource.getPaymentMethods().then((value) {
        return value.toEntity();
      });
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<void> savePaymentMethod(PaymentMethodRequestDto request) async {
    try {
      await dataSource.savePaymentMethod(request);
    } catch (e) {
      rethrow;
    }
  }
}
