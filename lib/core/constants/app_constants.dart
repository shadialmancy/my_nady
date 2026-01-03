import 'package:logger/logger.dart';

class AppConstants {
  const AppConstants._();
  static const String loginApiUrl = '/authentication/login';
  static const String registerApiUrl = '/authentication/register';
  static const String logoutApiUrl = '/authentication/logout';
  static const String resetPasswordApiUrl = '/authentication/reset-password';

  static const String logoImage = 'assets/images/logo.png';
  static const String tripsAssetPath = 'assets/data/trips_mock.json';
  static const String settingsImage = 'assets/icons/settings.svg';
  static const String notificationIcon = 'assets/icons/notification.svg';
  static const String menuIcon = 'assets/icons/menu.svg';
  static const String plusIcon = 'assets/icons/plus.svg';
  static const String filterIcon = 'assets/icons/filter.svg';
  static const String arrowDownIcon = 'assets/icons/arrow_down.svg';
  static const String calendarIcon = 'assets/icons/calendar.svg';
  static const String userImage = 'assets/images/user.png';
  static const String moreIcon = 'assets/icons/more-Horizontal.svg';
}

Logger logger = Logger(
  printer: HybridPrinter(
    PrettyPrinter(methodCount: 0, errorMethodCount: 5, lineLength: 140),
    error: PrettyPrinter(methodCount: 15, errorMethodCount: 5, lineLength: 140),
    fatal: PrettyPrinter(methodCount: 15, errorMethodCount: 5, lineLength: 140),
    trace: PrettyPrinter(methodCount: 25, errorMethodCount: 5, lineLength: 140),
    warning: PrettyPrinter(
      methodCount: 5,
      errorMethodCount: 5,
      lineLength: 140,
    ),
  ),
);
