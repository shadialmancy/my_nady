// ignore_for_file: library_private_types_in_public_api

import 'package:my_nady_project/core/constants/app_strings.dart';
import 'package:shared_preferences/shared_preferences.dart';

class _SessionManager {
  final String authToken = 'authorization';
  final String deviceToken = 'device-token';
  final String locale = 'locale';

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

  Future<void> setAuthToken({int? tokenn}) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setInt(authToken, tokenn!);
  }

  Future<int> getAuthToken() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    int tokenn;
    tokenn = pref.getInt(authToken) ?? 0;
    return tokenn;
  }

  Future<void> setDeviceToken({String? tokenn}) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString(deviceToken, tokenn!);
  }

  Future<String> getDeviceToken() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    String tokenn;
    tokenn = pref.getString(deviceToken) ?? 'Tokenn';
    return tokenn;
  }
}

final _SessionManager sessionManager = _SessionManager();
