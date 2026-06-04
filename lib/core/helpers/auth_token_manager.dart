import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:my_nady_project/core/constants/app_constants.dart';
import 'package:my_nady_project/core/helpers/session_manager.dart';
import 'package:my_nady_project/features/authentication/data/models/refresh_response_dto/refresh_response_dto.dart';

/// Refreshes auth tokens using the refresh token and persists them locally.
class AuthTokenManager {
  AuthTokenManager._();

  static Future<bool>? _refreshInFlight;

  static Future<bool> refreshAndPersistTokens() {
    _refreshInFlight ??= _performRefresh().whenComplete(() {
      _refreshInFlight = null;
    });
    return _refreshInFlight!;
  }

  static Future<bool> _performRefresh() async {
    final refreshToken = await sessionManager.getRefreshToken();
    if (refreshToken == null || refreshToken.isEmpty) {
      return false;
    }

    final dio = Dio(
      BaseOptions(
        baseUrl: dotenv.env['BASE_URL']!,
        contentType: 'application/json',
        validateStatus: (status) => true,
        headers: const {
          'Accept': '*/*',
          'X-Client-Type': 'mobile',
        },
      ),
    );

    final response = await dio.post(
      AppConstants.refreshApiUrl,
      options: Options(
        headers: {'Authorization': 'Bearer $refreshToken'},
        extra: const {'skipAuthRefresh': true},
      ),
    );

    if (response.statusCode != 200 && response.statusCode != 201) {
      return false;
    }

    final body = response.data;
    if (body is! Map<String, dynamic>) {
      return false;
    }

    final refreshResponse = RefreshResponseDto.fromJson(body);
    final tokens = refreshResponse.data?.tokens;
    if (tokens?.accessToken == null || tokens?.refreshToken == null) {
      return false;
    }

    await sessionManager.persistTokens(
      accessToken: tokens!.accessToken!,
      refreshToken: tokens.refreshToken!,
      accessTokenExpiresAt: tokens.accessTokenExpiresAt,
      refreshTokenExpiresAt: tokens.refreshTokenExpiresAt,
    );

    return true;
  }
}
