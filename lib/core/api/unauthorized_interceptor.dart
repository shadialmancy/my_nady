import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import '../../features/authentication/presentation/provider/auth_ui_service.dart';
import '../constants/app_sizes.dart';
import '../router/app_router.dart';
import '../../../main.dart';

class UnauthorizedInterceptor extends Interceptor {
  static bool _isShowingDialog = false;

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    debugPrint(
      'UnauthorizedInterceptor: onError triggered. Status: ${err.response?.statusCode}',
    );
    if (err.response?.statusCode == 401 &&
        !err.requestOptions.path.contains('login')) {
      if (!_isShowingDialog) {
        _isShowingDialog = true;
        debugPrint(
          'UnauthorizedInterceptor: 401 detected, logging out and showing dialog',
        );
        _logout();
        _showUnauthorizedDialog();
      }
    }
    super.onError(err, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    debugPrint(
      'UnauthorizedInterceptor: onResponse triggered. Status: ${response.statusCode}',
    );
    if (response.statusCode == 401 &&
        !response.requestOptions.path.contains('login')) {
      if (!_isShowingDialog) {
        _isShowingDialog = true;
        debugPrint(
          'UnauthorizedInterceptor: 401 detected in onResponse, logging out and showing dialog',
        );
        _logout();
        _showUnauthorizedDialog();
      }
    }
    super.onResponse(response, handler);
  }

  // void _showUnauthorizedDialog() {
  //   final context = appRouter.navigatorKey.currentContext;
  //   if (context != null) {
  //     showDialog(
  //       context: context,
  //       barrierDismissible: false,
  //       builder: (context) => AlertDialog(
  //         title: const Text('Session Expired'),
  //         content: const Text('Your session has expired. Please login again.'),
  //         actions: [
  //           TextButton(
  //             onPressed: () {
  //               _isShowingDialog = false;
  //               Navigator.of(context).pop();
  //               appRouter.pushAndPopUntil(
  //                 const LoginRoute(),
  //                 predicate: (route) => false,
  //               );
  //             },
  //             child: const Text('Login'),
  //           ),
  //         ],
  //       ),
  //     );
  //   }
  // }

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
            shape: RoundedRectangleBorder(borderRadius: .circular(20)),
            contentPadding: const .only(
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
    providerContainer.read(authUiServiceProvider.notifier).logout();
  }
}
