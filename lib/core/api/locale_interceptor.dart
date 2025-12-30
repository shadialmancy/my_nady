import 'package:dio/dio.dart';

// Request methods PUT, POST, PATCH, DELETE needs access token,
// which needs to be passed with "Authorization" header as Bearer token.
class LocaleInterceptor extends Interceptor {
  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    //Locale? locale;
    // locale = await getLocale();
    // options.headers['locale'] = locale.languageCode;
    // continue with the request
    super.onRequest(options, handler);
  }
}
