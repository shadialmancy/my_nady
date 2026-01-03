// ignore_for_file: library_private_types_in_public_api

import 'package:my_nady_project/core/constants/app_strings.dart';
import 'package:shared_preferences/shared_preferences.dart';

class _SessionManager {
  final String authToken = 'authorization';
  final String refreshToken = 'refresh-token';
  final String deviceToken = 'device-token';
  final String locale = 'locale';
  final String boardingVisitState = 'boarding-visit-state';

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

  Future<void> setAuthToken({String? token}) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    token == null ? prefs.remove(authToken) : prefs.setString(authToken, token);
  }

  Future<String> getAuthToken() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    String tokenn;
    tokenn = pref.getString(authToken) ?? 'Token';
    return tokenn;
  }

  Future<void> setRefreshToken({String? token}) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    token == null
        ? prefs.remove(refreshToken)
        : prefs.setString(refreshToken, token);
  }

  Future<String> getRefreshToken() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    String token;
    token = pref.getString(refreshToken) ?? 'Token';
    return token;
  }
}

final _SessionManager sessionManager = _SessionManager();
