import 'package:dio/dio.dart';
import 'package:my_nady_project/core/helpers/session_manager.dart';
import 'package:my_nady_project/features/settings/data/models/subscription_history_dto/subscription_history_dto.dart';
import 'package:my_nady_project/features/settings/data/models/subscription_current_dto/subscription_current_dto.dart';
import '../../../authentication/data/models/error_model/error_model.dart';

import '../../../../core/api/apis.dart';
import '../../../../core/constants/app_constants.dart';

abstract class SubscriptionSource {
  Future<SubscriptionHistoryDto> getSubscriptionHistory();
  Future<SubscriptionCurrentDto> getCurrentSubscriptions();
}

class SubscriptionSourceImpl implements SubscriptionSource {
  @override
  Future<SubscriptionHistoryDto> getSubscriptionHistory() async {
    try {
      final token = await sessionManager.getAuthToken();
      final response = await DioClient().dio.get(
        AppConstants.subscriptionHistoryApiUrl,
        options: Options(
          headers: {
            'Content-Type': 'application/json',
            'X-Client-Type': 'mobile',
            'Authorization': 'Bearer $token',
          },
        ),
      );
      if (response.statusCode == 200) {
        return SubscriptionHistoryDto.fromJson(response.data);
      } else {
        final errorModel = ErrorModel.fromJson(response.data);
        throw errorModel.message ?? 'Error in getSubscriptionHistory';
      }
    } on DioException catch (e) {
      if (e.response != null) {
        final errorModel = ErrorModel.fromJson(e.response!.data);
        throw errorModel.message ?? 'Error in getSubscriptionHistory';
      } else {
        throw 'Network error occurred';
      }
    }
  }

  @override
  Future<SubscriptionCurrentDto> getCurrentSubscriptions() async {
    try {
      final token = await sessionManager.getAuthToken();
      final response = await DioClient().dio.get(
        AppConstants.currentSubscriptionsApiUrl,
        options: Options(
          headers: {
            'Content-Type': 'application/json',
            'X-Client-Type': 'mobile',
            'Authorization': 'Bearer $token',
          },
        ),
      );
      if (response.statusCode == 200) {
        return SubscriptionCurrentDto.fromJson(response.data);
      } else {
        final errorModel = ErrorModel.fromJson(response.data);
        throw errorModel.message ?? 'Error in getCurrentSubscriptions';
      }
    } on DioException catch (e) {
      if (e.response != null) {
        final errorModel = ErrorModel.fromJson(e.response!.data);
        throw errorModel.message ?? 'Error in getCurrentSubscriptions';
      } else {
        throw 'Network error occurred';
      }
    }
  }
}
