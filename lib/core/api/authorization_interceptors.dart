import 'package:dio/dio.dart';
import 'package:my_nady_project/core/helpers/session_manager.dart';

/// Attaches the access token when available. Guests browse without a token.
class AuthorizationInterceptor extends Interceptor {
  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    if (options.extra['skipAuthRefresh'] == true) {
      return handler.next(options);
    }

    final token = await sessionManager.getAuthToken();
    if (token != null && token.isNotEmpty) {
      options.headers['Authorization'] = 'Bearer $token';
    } else {
      options.headers.remove('Authorization');
    }

    handler.next(options);
  }
}
