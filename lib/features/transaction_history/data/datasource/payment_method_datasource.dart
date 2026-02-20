import 'package:my_nady_project/core/constants/app_constants.dart';
import 'package:my_nady_project/features/transaction_history/data/models/payment_method_dto/payment_method_dto.dart';
import 'package:my_nady_project/features/transaction_history/data/models/payment_method_request_dto/payment_method_request_dto.dart';
import 'package:my_nady_project/features/authentication/data/models/error_model/error_model.dart';
import '../../../../core/api/apis.dart';

abstract class PaymentMethodDataSource {
  Future<PaymentMethodDto> getPaymentMethods();
  Future<void> savePaymentMethod(PaymentMethodRequestDto request);
}

class PaymentMethodDataSourceImpl implements PaymentMethodDataSource {
  @override
  Future<PaymentMethodDto> getPaymentMethods() async {
    final response = await DioClient().dio.get(
      AppConstants.paymentMethodsApiUrl,
    );

    if (response.statusCode == 200) {
      return PaymentMethodDto.fromJson(response.data);
    } else {
      final errorModel = ErrorModel.fromJson(response.data);
      throw errorModel.message ?? 'Error in getPaymentMethods';
    }
  }

  @override
  Future<void> savePaymentMethod(PaymentMethodRequestDto request) async {
    final response = await DioClient().dio.post(
      AppConstants.paymentMethodsApiUrl,
      data: request.toJson(),
    );

    if (response.statusCode == 200 || response.statusCode == 201) {
      return;
    } else {
      final errorModel = ErrorModel.fromJson(response.data);
      throw errorModel.message ?? 'Error in savePaymentMethod';
    }
  }
}
