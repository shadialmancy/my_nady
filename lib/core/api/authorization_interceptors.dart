import 'package:dio/dio.dart';
import 'package:my_nady_project/core/helpers/session_manager.dart';

// Request methods PUT, POST, PATCH, DELETE needs access token,
// which needs to be passed with "Authorization" header as Bearer token.

class AuthorizationInterceptor extends Interceptor {
  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    final token = await sessionManager.getAuthToken();
    if (token != null && token.isNotEmpty) {
      print('AuthorizationInterceptor: $token');
      options.headers['Authorization'] = 'Bearer $token';
    }

    handler.next(options);
  }
}
