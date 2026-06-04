import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import 'apis.dart';

class DioClient {
  DioClient._();

  static final DioClient instance = DioClient._();

  factory DioClient() => instance;

  late final Dio dio = _createDio();

  Dio _createDio() {
    return Dio(
      BaseOptions(
        baseUrl: dotenv.env['BASE_URL']!,
        responseType: ResponseType.json,
        receiveDataWhenStatusError: true,
        headers: {
          'Accept': '*/*',
          'Connection-Type': 'mobile',
          'Accept-Encoding': 'gzip, deflate, br',
        },
        contentType: 'application/json',
        // Keep 401 as a normal response; UnauthorizedInterceptor handles refresh.
        validateStatus: (status) => status != null && status <= 500,
        followRedirects: false,
        maxRedirects: 5,
      ),
    )..interceptors.addAll([
      AuthorizationInterceptor(),
      LoggerInterceptor(),
      UnauthorizedInterceptor(),
    ]);
  }
}
