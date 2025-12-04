// ignore_for_file: overridden_fields

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';

const kThemeModeKey = '__theme_mode__';
SharedPreferences? _prefs;

abstract class FlutterFlowTheme {
  static Future initialize() async =>
      _prefs = await SharedPreferences.getInstance();
  static ThemeMode get themeMode {
    final darkMode = _prefs?.getBool(kThemeModeKey);
    return darkMode == null
        ? ThemeMode.system
        : darkMode
        ? ThemeMode.dark
        : ThemeMode.light;
  }

  static void saveThemeMode(ThemeMode mode) => mode == ThemeMode.system
      ? _prefs?.remove(kThemeModeKey)
      : _prefs?.setBool(kThemeModeKey, mode == ThemeMode.dark);

  static FlutterFlowTheme of(BuildContext context) {
    // set theme here for Dev
    return LightModeTheme();
    // return DarkModeTheme();
    //! Todo: remove on release !

    // ignore: dead_code
    return Theme.of(context).brightness == Brightness.dark
        ? DarkModeTheme()
        : LightModeTheme();
  }

  @Deprecated('Use primary instead')
  Color get primaryColor => primary;
  @Deprecated('Use secondary instead')
  Color get secondaryColor => whiteColor;
  @Deprecated('Use borderGrey instead')
  Color get borderGreyColor => borderGrey;

  late final Color primary;
  late final Color whiteColor;
  late final Color whiteF2;
  late final Color secondary;
  late final Color whiteE7;
  late final Color greyFA;
  late final Color greyE6;
  late final Color greyEE;
  late final Color greyD0;
  late final Color greyD5;
  late final Color grey86;
  late final Color grey67;
  late final Color purple6D;
  late final Color backgroundColor;
  late final Color grey;
  late final Color greyD8;
  late final Color grey87;
  late final Color dark18;

  late final Color borderGrey;
  late final Color greyD9D9;
  late final Color lightBlue;
  late final Color blue15;
  late final Color blue006;
  late final Color greenff;
  late final Color primaryText;
  late final Color secondaryText;
  late final Color primaryBackground;
  late final Color primaryHomeCareBackground;
  late final Color secondaryBackground;
  late final Color grey82;
  late final Color grey9C;
  late final Color grey90;
  late final Color secondaryBusinessBackground;
  late final Color secondaryBlue;
  late final Color greyB3B;
  late final Color accent3;
  late final Color accent4;
  late final Color online;
  late final Color success;
  late final Color warning;
  late final Color lightRedBorderColor;
  late final Color lightRedColor;
  late final Color error;
  late final Color info;

  late final Color borderColor;
  late final Color verificationCodeBorderColor;

  late final Color secondaryBorderColor;
  late final Color homeCareBorderColor;
  late final Color radioBorderColor;
  late final Color lightBlueBorderColor;

  late final Color white;
  late final Color whiteFC;
  late final Color whiteF6;
  late final Color cultured;
  late final Color underProgress;

  late final Color redApple;
  late final Color darkRed;
  late final Color darkRed82;
  late final Color redF6;
  late final Color redEC;
  late final Color redD7;
  late final Color redEB;
  late final Color green47;
  late final Color green29;
  late final Color greenAE;
  late final Color yellowFF;
  late final Color yellowB5;
  late final Color yellowEA;
  late final Color yellow37;

  late final Color brightBlue;
  late final Color celadon;

  late final Color disabledBlue;
  late final Color turquoise;
  late final Color gunmetal;
  late final Color grayIcon;
  late final Color darkText;
  late final Color fullBlack;
  late final Color grey8080;
  late final Color grey99;
  late final Color grayButton;
  late final Color black1E;
  late final Color ark18;
  late final Color dark52;
  late final Color dark40;
  late final Color dark48;
  late final Color dark78;
  late final Color periwinkle;
  late final Color blue98;
  late final Color blueF4;
  late final Color brightNavy;
  late final Color gray600;
  late final Color greenFD;
  late final Color lineGray;
  late final Color primaryBtnText;
  late final Color lineColor;
  late final Color blue013;
  late final Color customColor3;
  late final Color customColor4;
  late final Color customColor5;
  late final Color dividerColor;

  late final Color homeCardBlue;
  late final Color homeCardPink;
  late final Color homeCardGreen;
  late final Color homeCardOrange;
  late final Color purple90;
  late final Color greySE;
  late final Color boxColors7;

  @Deprecated('Use displaySmallFamily instead')
  String get title1Family => displaySmallFamily;
  @Deprecated('Use displaySmall instead')
  TextStyle get title1 => typography.displaySmall;
  @Deprecated('Use headlineMediumFamily instead')
  String get title2Family => typography.headlineMediumFamily;
  @Deprecated('Use headlineMedium instead')
  TextStyle get title2 => typography.headlineMedium;
  @Deprecated('Use headlineSmallFamily instead')
  String get title3Family => typography.headlineSmallFamily;
  @Deprecated('Use headlineSmall instead')
  TextStyle get title3 => typography.headlineSmall;
  @Deprecated('Use titleMediumFamily instead')
  String get subtitle1Family => typography.titleMediumFamily;
  @Deprecated('Use titleMedium instead')
  TextStyle get subtitle1 => typography.titleMedium;
  @Deprecated('Use titleSmallFamily instead')
  String get subtitle2Family => typography.titleSmallFamily;
  @Deprecated('Use titleSmall instead')
  TextStyle get subtitle2 => typography.titleSmall;
  @Deprecated('Use bodyMediumFamily instead')
  String get bodyText1Family => typography.bodyMediumFamily;
  @Deprecated('Use bodyMedium instead')
  TextStyle get bodyText1 => typography.bodyMedium;
  @Deprecated('Use bodySmallFamily instead')
  String get bodyText2Family => typography.bodySmallFamily;
  @Deprecated('Use bodySmall instead')
  TextStyle get bodyText2 => typography.bodySmall;

  String get displayLargeFamily => typography.displayLargeFamily;
  TextStyle get displayLarge => typography.displayLarge;
  TextStyle get displayLargeSecondary => typography.displayLargeSecondary;
  String get displayMediumFamily => typography.displayMediumFamily;
  TextStyle get displayMedium => typography.displayMedium;
  TextStyle get displayMediumSecondary => typography.displayMediumSecondary;
  String get displaySmallFamily => typography.displaySmallFamily;
  TextStyle get displaySmall => typography.displaySmall;
  TextStyle get displaySmallWhite30 => typography.displaySmallWhite30;
  TextStyle get displaySmallSecondary => typography.displaySmallSecondary;
  String get headlineLargeFamily => typography.headlineLargeFamily;
  TextStyle get headlineLarge => typography.headlineLarge;
  TextStyle get headlineLargeSecondary => typography.headlineLargeSecondary;
  String get headlineMediumFamily => typography.headlineMediumFamily;
  TextStyle get headlineMedium => typography.headlineMedium;
  TextStyle get headlineMediumSecondary => typography.headlineMediumSecondary;
  String get headlineSmallFamily => typography.headlineSmallFamily;
  TextStyle get headlineSmall => typography.headlineSmall;
  TextStyle get headlineSmallSecondary => typography.headlineSmallSecondary;
  String get titleLargeFamily => typography.titleLargeFamily;
  TextStyle get titleLarge => typography.titleLarge;
  TextStyle get titleLargeSecondary => typography.titleLargeSecondary;
  String get titleMediumFamily => typography.titleMediumFamily;
  TextStyle get titleMedium => typography.titleMedium;
  TextStyle get titleMediumSecondary => typography.titleMediumSecondary;
  String get titleSmallFamily => typography.titleSmallFamily;
  TextStyle get titleSmall => typography.titleSmall;
  TextStyle get titleSmallSecondary => typography.titleSmallSecondary;
  String get labelLargeFamily => typography.labelLargeFamily;
  TextStyle get labelLarge => typography.labelLarge;
  TextStyle get labelLargeSecondary => typography.labelLargeSecondary;
  String get labelMediumFamily => typography.labelMediumFamily;
  TextStyle get labelMedium => typography.labelMedium;
  TextStyle get labelMediumSecondary => typography.labelMediumSecondary;
  String get labelSmallFamily => typography.labelSmallFamily;
  TextStyle get labelSmall => typography.labelSmall;
  TextStyle get labelSmallSecondary => typography.labelSmallSecondary;
  String get bodyLargeFamily => typography.bodyLargeFamily;
  TextStyle get bodyLarge => typography.bodyLarge;
  TextStyle get bodyLargeSecondary => typography.bodyLargeSecondary;
  String get bodyMediumFamily => typography.bodyMediumFamily;
  TextStyle get bodyMedium => typography.bodyMedium;
  TextStyle get bodyMediumSecondary => typography.bodyMediumSecondary;
  String get bodySmallFamily => typography.bodySmallFamily;
  TextStyle get bodySmall => typography.bodySmall;
  TextStyle get bodySmallSecondary => typography.bodySmallSecondary;

  Typography get typography => ThemeTypography(this);
}

class LightModeTheme extends FlutterFlowTheme {
  @override
  @Deprecated('Use primary instead')
  Color get primaryColor => primary;
  @override
  @Deprecated('Use secondary instead')
  Color get secondaryColor => whiteColor;
  @override
  @Deprecated('Use borderGrey instead')
  Color get borderGreyColor => borderGrey;

  @override
  final Color primary = const Color(0xff152A61);
  @override
  final Color secondary = const Color(0xffFF6B2C);
  @override
  final Color whiteColor = const Color(0xFFFFFFFF);
  @override
  final Color whiteF2 = const Color(0xFFF2F2F2);
  @override
  final Color whiteE7 = const Color(0xFFE7E7E7);
  @override
  final Color whiteFC = const Color(0xFFFCFCFC);
  @override
  final Color whiteF6 = const Color(0xFFF6F6F6);
  @override
  final Color greyFA = const Color(0xFFFAFAFA);
  @override
  final Color greyE6 = const Color(0xFFE6E6E6);
  @override
  final Color greyEE = const Color(0xFFEEF2F5);
  @override
  final Color greyD0 = const Color(0xFFD0D0D0);
  @override
  final Color greyD5 = const Color(0xFFD5D5D5);
  @override
  final Color grey86 = const Color(0xFF868686);
  @override
  final Color grey67 = const Color(0xFF676767);
  @override
  final Color purple6D = const Color(0xFF6D73FF);

  @override
  final Color backgroundColor = const Color(0xFFFFFFFF);

  @override
  final Color grey = const Color(0xffD1CFCF);
  @override
  final Color grey87 = const Color(0xff878787);

  @override
  final Color greyD8 = const Color(0xffD8D8D8);
  @override
  final Color borderGrey = const Color(0xffDCDCDC);
  @override
  final Color greyD9D9 = const Color(0xffD9D9D9);

  @override
  final Color primaryText = const Color(0xff292D32);
  @override
  final Color secondaryText = const Color(0xff79797A);
  @override
  final Color primaryBackground = const Color(0xffFFFFFF);
  @override
  final Color primaryHomeCareBackground = const Color(0xfff6fdfd);
  @override
  final Color secondaryBackground = const Color(0xffFFFFFF);
  @override
  final Color grey82 = const Color(0xFF828282);
  @override
  final Color grey9C = const Color(0xFF9CA3AF);
  @override
  final Color grey90 = const Color(0xFF909090);
  @override
  final Color secondaryBusinessBackground = const Color(0xffFFFFFF);
  // 0xFFededed
  @override
  final Color secondaryBlue = const Color(0xff7BBBCF);

  @override
  final Color greyB3B = const Color(0xffBEBEBE);
  @override
  final Color accent3 = const Color(0xFFE0E0E0);
  @override
  final Color accent4 = const Color(0xFFEEEEEE);

  @override
  final Color online = const Color(0xFF01E195);
  @override
  final Color success = const Color(0xFF04A24C);
  @override
  final Color warning = const Color(0xFFFCDC0C);
  @override
  final Color lightRedBorderColor = const Color(0xFFF9C5C8);
  @override
  final Color lightRedColor = const Color(0xFFFDECED);

  @override
  final Color error = const Color(0xFFE21C3D);
  @override
  final Color info = const Color(0xFF1C4494);

  @override
  final Color borderColor = const Color(0xFFE4D9D9);
  @override
  final Color secondaryBorderColor = const Color(0xFFE9EEF6);
  @override
  final Color verificationCodeBorderColor = const Color(0xFFDCE2EF);
  @override
  final Color homeCareBorderColor = const Color(0xFF23C5B3);
  @override
  final Color radioBorderColor = const Color(0xFF98B2D5);
  @override
  final Color lightBlueBorderColor = const Color(0xFF4D79B6);
  @override
  final Color blue15 = const Color(0xFF15379A);
  @override
  final Color blue006 = const Color(0xFF006FCF);
  @override
  final Color greenff = const Color(0xFFDCF9F6);

  @override
  final Color white = Colors.white;

  @override
  final Color underProgress = const Color(0xFFE98C00);

  @override
  final Color cultured = const Color(0xFFF1F4F8);
  @override
  final Color redApple = const Color(0xffDB0A0A);
  @override
  final Color darkRed = const Color(0xffA83138);
  @override
  final Color darkRed82 = const Color(0xff82262B);
  @override
  final Color redF6 = const Color(0xffF6A9AE);
  @override
  final Color redEC = const Color(0xffEC454F);
  @override
  final Color redD7 = const Color(0xffD73F48);
  @override
  final Color redEB = const Color(0xffEB4335);
  @override
  final Color green47 = const Color(0xff47A94F);
  @override
  final Color green29 = const Color(0xff29F2A9);
  @override
  final Color greenAE = const Color(0xffAEDFB2);
  @override
  final Color yellowFF = const Color(0xffFFECB0);
  @override
  final Color yellowB5 = const Color(0xffB58900);
  @override
  final Color yellowEA = const Color(0xffEAC046);
  @override
  final Color yellow37 = const Color(0xffFFAC37);
  @override
  final Color disabledBlue = const Color(0xFFA3BADB);
  @override
  final Color turquoise = const Color(0xFF39D2C0);
  @override
  final Color gunmetal = const Color(0xFF262D34);
  @override
  final Color brightBlue = const Color(0xFFEDF5FF);
  @override
  final Color grayIcon = const Color(0xFF95A1AC);
  @override
  final Color grayButton = const Color(0xFF95A1AC);
  @override
  final Color darkText = const Color(0xFF1E2429);
  @override
  final Color fullBlack = const Color(0xFF000000);
  @override
  final Color grey8080 = const Color(0xFF808080);
  @override
  final Color grey99 = const Color(0xFF999999);
  @override
  final Color lightBlue = const Color(0xffEDF5FF);
  @override
  final Color black1E = const Color(0xFF1E1E1E);
  @override
  final Color dark18 = const Color(0xFF181C1F);
  @override
  final Color dark52 = const Color(0xff525252);
  @override
  final Color dark40 = const Color(0xFF404040);
  @override
  final Color dark48 = const Color(0xFF484848);

  @override
  final Color dark78 = const Color(0xFF768C99);
  @override
  final Color periwinkle = const Color(0xFFBACBE3);
  @override
  final Color blue98 = const Color(0xFF98B2D5);
  @override
  final Color blueF4 = const Color(0xFFF4F7FB);
  @override
  final Color brightNavy = const Color(0xFF1E4DD9);
  @override
  final Color gray600 = const Color(0xFF57636C);
  @override
  final Color greenFD = const Color(0xFFF6FEFD);
  @override
  final Color lineGray = const Color(0xFFE1EDF9);
  @override
  final Color primaryBtnText = const Color(0xFFFFFFFF);
  @override
  final Color lineColor = const Color(0xFFE0E3E7);

  @override
  final Color customColor3 = const Color(0xff4DC3D0);
  @override
  final Color customColor4 = const Color(0xff23C5B3);
  @override
  final Color customColor5 = const Color(0xff22A55F);
  @override
  final Color dividerColor = const Color(0xFF2C2F35);

  @override
  final Color homeCardBlue = const Color(0xff75B6D2);
  @override
  final Color homeCardPink = const Color(0xffE491D2);
  @override
  final Color homeCardGreen = const Color(0xff7DB184);
  @override
  final Color homeCardOrange = const Color(0xffDDAC98);
  @override
  final Color purple90 = const Color(0xFF90A3BF);
  @override
  final Color greySE = const Color(0xFF5E5E5E);
  @override
  final Color boxColors7 = const Color(0xFF8B4FAD);
}

abstract class Typography {
  String get displayLargeFamily;
  TextStyle get displayLarge;
  TextStyle get displayLargeSecondary;
  String get displayMediumFamily;
  TextStyle get displayMedium;
  TextStyle get displayMediumSecondary;
  String get displaySmallFamily;
  TextStyle get displaySmall;
  TextStyle get displaySmallWhite30;
  TextStyle get displaySmallSecondary;
  String get headlineLargeFamily;
  TextStyle get headlineLarge;
  TextStyle get headlineLargeSecondary;
  String get headlineMediumFamily;
  TextStyle get headlineMedium;
  TextStyle get headlineMediumSecondary;
  String get headlineSmallFamily;
  TextStyle get headlineSmall;
  TextStyle get headlineSmallSecondary;
  String get titleLargeFamily;
  TextStyle get titleLarge;
  TextStyle get titleLargeSecondary;
  String get titleMediumFamily;
  TextStyle get titleMedium;
  TextStyle get titleMediumSecondary;
  String get titleSmallFamily;
  TextStyle get titleSmall;
  TextStyle get titleSmallSecondary;
  String get labelLargeFamily;
  TextStyle get labelLarge;
  TextStyle get labelLargeSecondary;
  String get labelMediumFamily;
  TextStyle get labelMedium;
  TextStyle get labelMediumSecondary;
  String get labelSmallFamily;
  TextStyle get labelSmall;
  TextStyle get labelSmallSecondary;
  String get bodyLargeFamily;
  TextStyle get bodyLarge;
  TextStyle get bodyLargeSecondary;
  String get bodyMediumFamily;
  TextStyle get bodyMedium;
  TextStyle get bodyMediumSecondary;
  String get bodySmallFamily;
  TextStyle get bodySmall;
  TextStyle get bodySmallSecondary;
}

class ThemeTypography extends Typography {
  ThemeTypography(this.theme);

  final FlutterFlowTheme theme;

  @override
  String get displayLargeFamily => 'Readex Pro';
  @override
  TextStyle get displayLarge => GoogleFonts.dmSans(
    color: theme.primaryText,
    fontWeight: FontWeight.normal,
    fontSize: 57.0,
  );
  @override
  TextStyle get displayLargeSecondary => GoogleFonts.dmSans(
    color: theme.secondaryText,
    fontWeight: FontWeight.normal,
    fontSize: 57.0,
  );
  @override
  String get displayMediumFamily => 'Readex Pro';
  @override
  TextStyle get displayMedium => GoogleFonts.dmSans(
    color: theme.primaryText,
    fontWeight: FontWeight.normal,
    fontSize: 45.0,
  );
  @override
  TextStyle get displayMediumSecondary => GoogleFonts.dmSans(
    color: theme.secondaryText,
    fontWeight: FontWeight.normal,
    fontSize: 45.0,
  );
  @override
  String get displaySmallFamily => 'Urbanist';
  @override
  TextStyle get displaySmall => GoogleFonts.dmSans(
    color: theme.primaryText,
    fontWeight: FontWeight.w600,
    fontSize: 24.0,
  );
  @override
  TextStyle get displaySmallWhite30 => GoogleFonts.dmSans(
    color: theme.white,
    fontWeight: FontWeight.w600,
    fontSize: 30.0,
  );
  @override
  TextStyle get displaySmallSecondary => GoogleFonts.dmSans(
    color: theme.secondaryText,
    fontWeight: FontWeight.w600,
    fontSize: 24.0,
  );
  @override
  String get headlineLargeFamily => 'Readex Pro';
  @override
  TextStyle get headlineLarge => GoogleFonts.dmSans(
    color: theme.primaryText,
    fontWeight: FontWeight.normal,
    fontSize: 32.0,
  );
  @override
  TextStyle get headlineLargeSecondary => GoogleFonts.dmSans(
    color: theme.secondaryText,
    fontWeight: FontWeight.normal,
    fontSize: 32.0,
  );
  @override
  String get headlineMediumFamily => 'Urbanist';
  @override
  TextStyle get headlineMedium => GoogleFonts.dmSans(
    color: theme.primaryText,
    fontWeight: FontWeight.w500,
    fontSize: 22.0,
  );
  @override
  TextStyle get headlineMediumSecondary => GoogleFonts.dmSans(
    color: theme.secondaryText,
    fontWeight: FontWeight.w500,
    fontSize: 22.0,
  );
  @override
  String get headlineSmallFamily => 'Urbanist';
  @override
  TextStyle get headlineSmall => GoogleFonts.dmSans(
    color: theme.primaryText,
    fontWeight: FontWeight.bold,
    fontSize: 20.0,
  );
  @override
  TextStyle get headlineSmallSecondary => GoogleFonts.dmSans(
    color: theme.secondaryText,
    fontWeight: FontWeight.bold,
    fontSize: 20.0,
  );
  @override
  String get titleLargeFamily => 'Readex Pro';
  @override
  TextStyle get titleLarge => GoogleFonts.dmSans(
    color: theme.primaryText,
    fontWeight: FontWeight.w500,
    fontSize: 22.0,
  );
  @override
  TextStyle get titleLargeSecondary => GoogleFonts.dmSans(
    color: theme.secondaryText,
    fontWeight: FontWeight.w500,
    fontSize: 22.0,
  );
  @override
  String get titleMediumFamily => 'Urbanist';
  @override
  TextStyle get titleMedium => GoogleFonts.dmSans(
    color: theme.primaryText,
    fontWeight: FontWeight.w500,
    fontSize: 18.0,
  );
  @override
  TextStyle get titleMediumSecondary => GoogleFonts.dmSans(
    color: theme.secondaryText,
    fontWeight: FontWeight.w500,
    fontSize: 18.0,
  );
  @override
  String get titleSmallFamily => GoogleFonts.dmSans().fontFamily ?? 'Urbanist';
  @override
  TextStyle get titleSmall => GoogleFonts.dmSans(
    color: theme.primaryText,
    fontWeight: FontWeight.w600,
    fontSize: 16.0,
  );
  @override
  TextStyle get titleSmallSecondary => GoogleFonts.dmSans(
    color: theme.secondaryText,
    fontWeight: FontWeight.w600,
    fontSize: 16.0,
  );
  @override
  String get labelLargeFamily =>
      GoogleFonts.dmSans().fontFamily ?? 'Readex Pro';
  @override
  TextStyle get labelLarge => GoogleFonts.dmSans(
    color: theme.primaryText,
    fontWeight: FontWeight.w500,
    fontSize: 14.0,
  );
  @override
  TextStyle get labelLargeSecondary => GoogleFonts.dmSans(
    color: theme.secondaryText,
    fontWeight: FontWeight.w500,
    fontSize: 14.0,
  );
  @override
  String get labelMediumFamily => 'Readex Pro';
  @override
  TextStyle get labelMedium => GoogleFonts.dmSans(
    color: theme.primaryText,
    fontWeight: FontWeight.w500,
    fontSize: 12.0,
  );
  @override
  TextStyle get labelMediumSecondary => GoogleFonts.dmSans(
    color: theme.secondaryText,
    fontWeight: FontWeight.w500,
    fontSize: 12.0,
  );
  @override
  String get labelSmallFamily => 'Readex Pro';
  @override
  TextStyle get labelSmall => GoogleFonts.dmSans(
    color: theme.primaryText,
    fontWeight: FontWeight.w500,
    fontSize: 10.0,
  );
  @override
  TextStyle get labelSmallSecondary => GoogleFonts.dmSans(
    color: theme.secondaryText,
    fontWeight: FontWeight.w500,
    fontSize: 10.0,
  );
  @override
  String get bodyLargeFamily => 'Readex Pro';
  @override
  TextStyle get bodyLarge => GoogleFonts.dmSans(
    color: theme.primaryText,
    fontWeight: FontWeight.normal,
    fontSize: 20.0,
  );
  @override
  TextStyle get bodyLargeSecondary => GoogleFonts.dmSans(
    color: theme.secondaryText,
    fontWeight: FontWeight.normal,
    fontSize: 16.0,
  );
  @override
  String get bodyMediumFamily => 'Urbanist';
  @override
  TextStyle get bodyMedium => GoogleFonts.dmSans(
    color: theme.secondaryText,
    fontWeight: FontWeight.w700,
    fontSize: 16.0,
  );
  @override
  TextStyle get bodyMediumSecondary => GoogleFonts.dmSans(
    color: theme.secondaryText,
    fontWeight: FontWeight.w500,
    fontSize: 14.0,
  );
  @override
  String get bodySmallFamily => 'Urbanist';
  @override
  TextStyle get bodySmall => GoogleFonts.dmSans(
    color: theme.primaryText,
    fontWeight: FontWeight.w400,
    fontSize: 14.0,
  );
  @override
  TextStyle get bodySmallSecondary => GoogleFonts.dmSans(
    color: theme.secondaryText,
    fontWeight: FontWeight.w400,
    fontSize: 14.0,
  );
}

class DarkModeTheme extends FlutterFlowTheme {
  @override
  @Deprecated('Use primary instead')
  Color get primaryColor => primary;
  @override
  @Deprecated('Use secondary instead')
  Color get secondaryColor => whiteColor;
  @override
  @Deprecated('Use borderGrey instead')
  Color get borderGreyColor => borderGrey;

  @override
  final Color primary = const Color(0xff2057A4);
  @override
  final Color secondary = const Color(0xffFF6B2C);
  @override
  final Color whiteColor = const Color(0xFF14181B);
  @override
  final Color whiteF2 = const Color(0xFFF2F2F2);
  @override
  final Color whiteE7 = const Color(0xFFE7E7E7);
  @override
  final Color whiteFC = const Color(0xFFFCFCFC);
  @override
  final Color whiteF6 = const Color(0xFFF6F6F6);
  @override
  final Color greyFA = const Color(0xFFFAFAFA);
  @override
  final Color greyE6 = const Color(0xFFE6E6E6);
  @override
  final Color greyEE = const Color(0xFFEEF2F5);
  @override
  final Color greyD0 = const Color(0xFFD0D0D0);
  @override
  final Color greyD5 = const Color(0xFFD5D5D5);
  @override
  final Color grey86 = const Color(0xFF868686);
  @override
  final Color grey67 = const Color(0xFF676767);
  @override
  final Color purple6D = const Color(0xFF6D73FF);
  @override
  final Color backgroundColor = const Color(0xFFFFFFFF);
  @override
  final Color grey = const Color(0xffD1CFCF);
  @override
  final Color grey87 = const Color(0xffF7F7F8);
  @override
  final Color greyD8 = const Color(0xFFD8D8D8);
  @override
  final Color borderGrey = const Color(0xFFFFFFFF);

  @override
  final Color greyD9D9 = const Color(0xff979797);

  @override
  final Color lightBlue = const Color(0xffEDF5FF);

  @override
  final Color primaryText = const Color(0xFFFFFFFF);
  @override
  final Color secondaryText = const Color(0xff79797A);

  @override
  final Color primaryBackground = const Color(0xffF6F8FD);
  @override
  final Color primaryHomeCareBackground = const Color(0xfff6fdfd);
  @override
  final Color secondaryBackground = const Color(0xFF14181B);
  @override
  final Color grey82 = const Color(0xFF828282);
  @override
  final Color grey90 = const Color(0xFF909090);
  @override
  final Color secondaryBusinessBackground = const Color(0xffFFFFFF);

  @override
  final Color secondaryBlue = const Color(0xff7BBBCF);
  @override
  final Color greyB3B = const Color(0xffBEBEBE);
  @override
  final Color accent3 = const Color(0xFF757575);
  @override
  final Color accent4 = const Color(0xFF616161);
  @override
  final Color online = const Color(0xFF01E195);
  @override
  final Color success = const Color(0xFF04A24C);
  @override
  final Color warning = const Color(0xFFFCDC0C);
  @override
  final Color lightRedBorderColor = const Color(0xFFF9C5C8);
  @override
  final Color lightRedColor = const Color(0xFFFDECED);
  @override
  final Color error = const Color(0xFFE21C3D);
  @override
  final Color info = const Color(0xFF1C4494);

  @override
  final Color borderColor = const Color(0xFFE4D9D9);
  @override
  final Color secondaryBorderColor = const Color(0xFFE9EEF6);
  @override
  final Color homeCareBorderColor = const Color(0xFF23C5B3);
  @override
  final Color radioBorderColor = const Color(0xFF98B2D5);
  @override
  final Color lightBlueBorderColor = const Color(0xFF4D79B6);
  @override
  final Color blue15 = const Color(0xFF15379A);
  @override
  final Color blue006 = const Color(0xFF006FCF);
  @override
  final Color greenff = const Color(0xFFDCF9F6);
  @override
  final Color white = Colors.white;
  @override
  final Color underProgress = const Color(0xFFE98C00);
  @override
  final Color cultured = const Color(0xFFF1F4F8);
  @override
  final Color redApple = const Color(0xffDB0A0A);
  @override
  final Color darkRed = const Color(0xffA83138);
  @override
  final Color darkRed82 = const Color(0xff82262B);
  @override
  final Color redF6 = const Color(0xffF6A9AE);
  @override
  final Color redEC = const Color(0xffEC454F);
  @override
  final Color redD7 = const Color(0xffD73F48);
  @override
  final Color redEB = const Color(0xffEB4335);
  @override
  final Color green47 = const Color(0xff47A94F);
  @override
  final Color green29 = const Color(0xff29F2A9);
  @override
  final Color greenAE = const Color(0xffAEDFB2);
  @override
  final Color yellowFF = const Color(0xffFFECB0);
  @override
  final Color yellowB5 = const Color(0xffB58900);
  @override
  final Color yellowEA = const Color(0xffEAC046);
  @override
  final Color yellow37 = const Color(0xffFFAC37);
  @override
  final Color disabledBlue = const Color(0xFFA3BADB);
  @override
  final Color turquoise = const Color(0xFF39D2C0);
  @override
  final Color gunmetal = const Color(0xFF262D34);
  @override
  final Color brightBlue = const Color(0xFFEDF5FF);
  @override
  final Color grayIcon = const Color(0xFF95A1AC);
  @override
  final Color grayButton = const Color(0xFF95A1AC);
  @override
  final Color darkText = const Color(0xFFFFFFFF);
  @override
  final Color fullBlack = const Color(0xFF000000);
  @override
  final Color grey8080 = const Color(0xFF808080);
  @override
  final Color grey99 = const Color(0xFF999999);
  @override
  final Color black1E = const Color(0xFF1E1E1E);
  @override
  final Color dark18 = const Color(0xFF181C1F);
  @override
  final Color dark52 = const Color(0xff525252);
  @override
  final Color dark40 = const Color(0xFF404040);
  @override
  final Color dark48 = const Color(0xFF484848);
  @override
  final Color dark78 = const Color(0xFF768C99);

  @override
  final Color periwinkle = const Color(0xFFBACBE3);
  @override
  final Color blue98 = const Color(0xFF98B2D5);
  @override
  final Color blueF4 = const Color(0xFFF4F7FB);
  @override
  final Color brightNavy = const Color(0xFF1E4DD9);
  @override
  final Color gray600 = const Color(0xFF57636C);
  @override
  final Color greenFD = const Color(0xFFF6FEFD);
  @override
  final Color lineGray = const Color(0xFF262D34);

  @override
  final Color primaryBtnText = const Color(0xFFFFFFFF);
  @override
  final Color lineColor = const Color(0xFF22282F);
  @override
  final Color homeCardBlue = const Color(0xff75B6D2);
  @override
  final Color homeCardPink = const Color(0xffE491D2);
  @override
  final Color homeCardGreen = const Color(0xff7DB184);
  @override
  final Color homeCardOrange = const Color(0xffDDAC98);
  @override
  final Color purple90 = const Color(0xFF90A3BF);
  @override
  final Color greySE = const Color(0xFF5E5E5E);
  @override
  final Color boxColors7 = const Color.fromARGB(255, 169, 112, 194);
}

extension TextStyleHelper on TextStyle {
  TextStyle override({
    String? fontFamily,
    Color? color,
    double? fontSize,
    FontWeight? fontWeight,
    double? letterSpacing,
    FontStyle? fontStyle,
    bool useGoogleFonts = false,
    TextDecoration? decoration,
    double? lineHeight,
  }) => useGoogleFonts
      ? TextStyle(
          color: color ?? this.color,
          fontSize: fontSize ?? this.fontSize,
          letterSpacing: letterSpacing ?? this.letterSpacing,
          fontWeight: fontWeight ?? this.fontWeight,
          fontStyle: fontStyle ?? this.fontStyle,
          decoration: decoration,
          height: lineHeight,
        )
      : copyWith(
          fontFamily: fontFamily,
          color: color,
          fontSize: fontSize,
          letterSpacing: letterSpacing,
          fontWeight: fontWeight,
          fontStyle: fontStyle,
          decoration: decoration,
          height: lineHeight,
        );
}
