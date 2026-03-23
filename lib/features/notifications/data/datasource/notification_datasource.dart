import 'package:dio/dio.dart';
import '../../../../core/api/apis.dart';
import '../../../../core/constants/app_constants.dart';
import '../models/notification_dto/notification_dto.dart';

abstract class NotificationDatasource {
  Future<void> registerFcmToken(String token);
  Future<void> removeFcmToken(String token);
  Future<NotificationDto> getNotifications({
    int page = 1,
    int limit = 20,
    bool? isRead,
    String? type,
  });
  Future<int> getUnreadCount();
  Future<void> markAsRead(String id);
  Future<void> markAllAsRead();
}

class NotificationDatasourceImpl implements NotificationDatasource {
  final Dio _dio = DioClient().dio;

  @override
  Future<void> registerFcmToken(String token) async {
    try {
      await _dio.post(AppConstants.fcmTokenApiUrl, data: {'token': token});
    } on DioException catch (e) {
      throw _handleDioError(e);
    }
  }

  @override
  Future<void> removeFcmToken(String token) async {
    try {
      await _dio.delete(AppConstants.fcmTokenApiUrl, data: {'token': token});
    } on DioException catch (e) {
      throw _handleDioError(e);
    }
  }

  @override
  Future<NotificationDto> getNotifications({
    int page = 1,
    int limit = 20,
    bool? isRead,
    String? type,
  }) async {
    try {
      final queryParams = {
        'page': page,
        'limit': limit,
        if (isRead != null) 'isRead': isRead,
        if (type != null) 'type': type,
      };

      final response = await _dio.get(
        AppConstants.notificationsApiUrl,
        queryParameters: queryParams,
      );

      if (response.statusCode == 200) {
        return NotificationDto.fromJson(response.data);
      } else {
        throw _handleResponseError(response.data);
      }
    } on DioException catch (e) {
      throw _handleDioError(e);
    }
  }

  @override
  Future<int> getUnreadCount() async {
    try {
      final response = await _dio.get(AppConstants.unreadCountApiUrl);

      if (response.statusCode == 200) {
        return response.data['count'] as int? ?? 0;
      } else {
        throw _handleResponseError(response.data);
      }
    } on DioException catch (e) {
      throw _handleDioError(e);
    }
  }

  @override
  Future<void> markAsRead(String id) async {
    try {
      await _dio.patch(AppConstants.markAsReadApiUrl(id));
    } on DioException catch (e) {
      throw _handleDioError(e);
    }
  }

  @override
  Future<void> markAllAsRead() async {
    try {
      await _dio.patch(AppConstants.markAllAsReadApiUrl);
    } on DioException catch (e) {
      throw _handleDioError(e);
    }
  }

  String _handleResponseError(dynamic data) {
    if (data is Map<String, dynamic> && data['message'] != null) {
      return data['message'].toString();
    }
    return 'An unexpected error occurred';
  }

  String _handleDioError(DioException e) {
    if (e.response != null && e.response?.data != null) {
      return _handleResponseError(e.response!.data);
    }
    return e.message ?? 'Unknown Network Error';
  }
}
