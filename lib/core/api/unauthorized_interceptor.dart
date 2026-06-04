import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:my_nady_project/features/authentication/presentation/provider/auth_ui_service.dart';
import 'package:my_nady_project/core/constants/app_sizes.dart';
import 'package:my_nady_project/core/router/app_router.dart';
import 'package:my_nady_project/core/helpers/session_manager.dart';
import 'package:my_nady_project/features/authentication/domain/entities/refresh_response_entity.dart';
import 'package:my_nady_project/main.dart';

class UnauthorizedInterceptor extends Interceptor {
  static bool _isShowingDialog = false;

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) async {
    debugPrint(
      'UnauthorizedInterceptor: onError triggered. Status: ${err.response?.statusCode}',
    );
    if (err.response?.statusCode == 401 &&
        !err.requestOptions.path.contains('login') &&
        !err.requestOptions.path.contains('refresh')) {
      final isLoggedIn =
          providerContainer.read(authUiServiceProvider).value != null;
      if (isLoggedIn) {
        try {
          final refreshed = await _refreshTokens(err.requestOptions);
          if (refreshed) {
            final retryResponse = await _retryRequest(err.requestOptions);
            handler.resolve(retryResponse);
            return;
          }
        } catch (e) {
          debugPrint('UnauthorizedInterceptor: Refresh token failed: $e');
          if (!_isShowingDialog) {
            _isShowingDialog = true;
            _logout();
            _showUnauthorizedDialog();
          }
        }
      }
    }
    super.onError(err, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) async {
    debugPrint(
      'UnauthorizedInterceptor: onResponse triggered. Status: ${response.statusCode}',
    );
    if (response.statusCode == 401 &&
        !response.requestOptions.path.contains('login') &&
        !response.requestOptions.path.contains('refresh')) {
      final isLoggedIn =
          providerContainer.read(authUiServiceProvider).value != null;
      if (isLoggedIn) {
        try {
          final refreshed = await _refreshTokens(response.requestOptions);
          if (refreshed) {
            final retryResponse = await _retryRequest(response.requestOptions);
            handler.resolve(retryResponse);
            return;
          }
        } catch (e) {
          debugPrint('UnauthorizedInterceptor: Refresh token failed: $e');
          if (!_isShowingDialog) {
            _isShowingDialog = true;
            _logout();
            _showUnauthorizedDialog();
          }
        }
      }
    }
    super.onResponse(response, handler);
  }

  Future<bool> _refreshTokens(RequestOptions requestOptions) async {
    final refreshToken = await sessionManager.getRefreshToken();
    final baseUrl = requestOptions.baseUrl.isNotEmpty
        ? requestOptions.baseUrl
        : (dotenv.env['BASE_URL'] ?? '');

    final dio = Dio(BaseOptions(baseUrl: baseUrl));

    final response = await dio.post(
      '/api/authentication/refresh',
      options: Options(headers: {'Authorization': 'Bearer $refreshToken'}),
    );

    if (response.statusCode == 200 || response.statusCode == 201) {
      final refreshResponse = RefreshResponseEntity.fromJson(response.data);
      final tokens = refreshResponse.data?.tokens;
      if (tokens != null &&
          tokens.accessToken != null &&
          tokens.refreshToken != null) {
        await sessionManager.setAuthToken(token: tokens.accessToken);
        await sessionManager.setRefreshToken(token: tokens.refreshToken);
        if (tokens.accessTokenExpiresAt != null) {
          await sessionManager.setAccessTokenExpiresAt(
            expiresAt: tokens.accessTokenExpiresAt!.toIso8601String(),
          );
        }
        if (tokens.refreshTokenExpiresAt != null) {
          await sessionManager.setRefreshTokenExpiresAt(
            expiresAt: tokens.refreshTokenExpiresAt!.toIso8601String(),
          );
        }
        return true;
      }
    }
    return false;
  }

  Future<Response> _retryRequest(RequestOptions requestOptions) async {
    final newAccessToken = await sessionManager.getAuthToken();
    final baseUrl = requestOptions.baseUrl.isNotEmpty
        ? requestOptions.baseUrl
        : (dotenv.env['BASE_URL'] ?? '');

    final dio = Dio(BaseOptions(baseUrl: baseUrl));

    final options = Options(
      method: requestOptions.method,
      headers: Map<String, dynamic>.from(requestOptions.headers),
    );
    options.headers?['Authorization'] = 'Bearer $newAccessToken';

    return dio.request(
      requestOptions.path,
      data: requestOptions.data,
      queryParameters: requestOptions.queryParameters,
      options: options,
    );
  }

  void _showUnauthorizedDialog() {
    final context = appRouter.navigatorKey.currentContext;
    if (context != null) {
      showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) {
          final (theme, l10n) = appSettingsRecord(context);
          return AlertDialog(
            backgroundColor: theme.white,
            title: Text(l10n.sessionExpired),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            contentPadding: const EdgeInsets.only(
              left: 30,
              right: 30,
              top: 90,
              bottom: 50,
            ),
            content: Text(l10n.sessionExpiredContent),
            actions: [
              TextButton(
                onPressed: () {
                  _isShowingDialog = false;
                  Navigator.of(context).pop();
                  appRouter.pushAndPopUntil(
                    const LoginRoute(),
                    predicate: (route) => false,
                  );
                },
                child: Text(l10n.login),
              ),
            ],
          );
        },
      );
    }
  }

  void _logout() {
    providerContainer.read(authUiServiceProvider.notifier).clearSession().then((
      _,
    ) {
      providerContainer.invalidate(authUiServiceProvider);
    });
  }
}
