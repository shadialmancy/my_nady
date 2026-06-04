// ignore_for_file: library_private_types_in_public_api

import 'package:my_nady_project/core/constants/app_strings.dart';
import 'package:shared_preferences/shared_preferences.dart';

class _SessionManager {
  final String authToken = 'authorization';
  final String refreshToken = 'refresh-token';
  final String accessTokenExpiresAt = 'access-token-expires-at';
  final String refreshTokenExpiresAt = 'refresh-token-expires-at';
  final String deviceToken = 'device-token';
  final String locale = 'locale';
  final String boardingVisitState = 'boarding-visit-state';
  final String guestMode = 'guest-mode';

  Future<void> setLocale({String? localee}) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString(locale, localee ?? AppStrings.en.toLowerCase());
  }

  Future<String> getLocale() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    String localee;
    localee = pref.getString(locale) ?? 'en';
    return localee;
  }

  Future<void> setBoardingVisitState({bool? status}) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool(boardingVisitState, status ?? false);
  }

  Future<bool> getBoardingVisitState() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    bool boardingVisit;
    boardingVisit = pref.getBool(boardingVisitState) ?? false;
    return boardingVisit;
  }

  Future<void> setGuestMode({required bool isGuest}) async {
    final prefs = await SharedPreferences.getInstance();
    if (isGuest) {
      await prefs.setBool(guestMode, true);
    } else {
      await prefs.remove(guestMode);
    }
  }

  Future<bool> isGuestMode() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getBool(guestMode) ?? false;
  }

  Future<void> setAuthToken({String? token}) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    token == null ? prefs.remove(authToken) : prefs.setString(authToken, token);
  }

  Future<String?> getAuthToken() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    return pref.getString(authToken);
  }

  Future<void> setRefreshToken({String? token}) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    token == null
        ? prefs.remove(refreshToken)
        : prefs.setString(refreshToken, token);
  }

  Future<String?> getRefreshToken() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    return pref.getString(refreshToken);
  }

  Future<void> persistTokens({
    required String accessToken,
    required String refreshToken,
    DateTime? accessTokenExpiresAt,
    DateTime? refreshTokenExpiresAt,
  }) async {
    await setAuthToken(token: accessToken);
    await setRefreshToken(token: refreshToken);
    await setAccessTokenExpiresAt(
      expiresAt: accessTokenExpiresAt?.toIso8601String(),
    );
    await setRefreshTokenExpiresAt(
      expiresAt: refreshTokenExpiresAt?.toIso8601String(),
    );
  }

  Future<void> setAccessTokenExpiresAt({String? expiresAt}) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    expiresAt == null
        ? prefs.remove(accessTokenExpiresAt)
        : prefs.setString(accessTokenExpiresAt, expiresAt);
  }

  Future<String?> getAccessTokenExpiresAt() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    return pref.getString(accessTokenExpiresAt);
  }

  Future<void> setRefreshTokenExpiresAt({String? expiresAt}) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    expiresAt == null
        ? prefs.remove(refreshTokenExpiresAt)
        : prefs.setString(refreshTokenExpiresAt, expiresAt);
  }

  Future<String?> getRefreshTokenExpiresAt() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    return pref.getString(refreshTokenExpiresAt);
  }

  Future<bool> hasStoredTokens() async {
    final access = await getAuthToken();
    final refresh = await getRefreshToken();
    final hasAccess = access != null && access.isNotEmpty;
    final hasRefresh = refresh != null && refresh.isNotEmpty;
    return hasAccess || hasRefresh;
  }

  /// Logged-in user with a non-expired refresh token and access token present.
  Future<bool> hasActiveSession() async {
    if (!await hasStoredTokens()) return false;
    if (await isRefreshTokenExpired()) return false;
    final access = await getAuthToken();
    return access != null && access.isNotEmpty;
  }

  Future<bool> isAccessTokenExpired() async {
    final expiresAtStr = await getAccessTokenExpiresAt();
    if (expiresAtStr == null || expiresAtStr.isEmpty) return false;
    return _isPast(expiresAtStr);
  }

  Future<bool> isRefreshTokenExpired() async {
    final expiresAtStr = await getRefreshTokenExpiresAt();
    if (expiresAtStr == null || expiresAtStr.isEmpty) return false;
    return _isPast(expiresAtStr);
  }

  bool _isPast(String isoDate) {
    try {
      return DateTime.now().isAfter(DateTime.parse(isoDate));
    } catch (_) {
      return false;
    }
  }

  Future<void> clearAuthSession() async {
    await setAuthToken(token: null);
    await setRefreshToken(token: null);
    await setAccessTokenExpiresAt(expiresAt: null);
    await setRefreshTokenExpiresAt(expiresAt: null);
  }
}

final _SessionManager sessionManager = _SessionManager();
