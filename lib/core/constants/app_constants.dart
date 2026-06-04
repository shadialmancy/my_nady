import 'package:logger/logger.dart';

class AppConstants {
  const AppConstants._();
  static const String loginApiUrl = '/authentication/login';
  static const String registerApiUrl = '/authentication/register';
  static const String logoutApiUrl = '/authentication/logout';
  static const String resetPasswordApiUrl = '/authentication/reset-password';
  static const String resendVerificationApiUrl =
      '/authentication/resend-verification';
  static const String forgotPasswordApiUrl = '/authentication/forgot-password';
  static const String verifyEmailApiUrl = '/authentication/verify-email';
  static const String refreshApiUrl = '/authentication/refresh';
  static const String profileApiUrl = '/users/profile';
  static const String uploadAvatarApiUrl = '/users/profile/upload-avatar';
  static const String branchesApiUrl = '/branches';
  static const String nearestBranchesApiUrl = '/branches/nearest';
  static const String myFavoritesApiUrl = '/branches/my-favorites';
  static String toggleFavoriteApiUrl(String id) => '/branches/$id/favorite';
  static const String purchaseSubscriptionApiUrl = '/subscriptions/purchase';
  static const String dairyRecordsApiUrl = '/diary';
  static const String changePasswordApiUrl = '/users/change-password';
  static const String subscriptionHistoryApiUrl = '/subscriptions/history';
  static const String currentSubscriptionsApiUrl = '/subscriptions/my';
  static const String paymentMethodsApiUrl = '/payment-methods';
  static const String branchesMetaTypesApiUrl = '/branches/meta/types';
  static const String branchesMetaAmenitiesApiUrl = '/branches/meta/amenities';
  static const String reviewsApiUrl = '/reviews';
  static const String addressBookApiUrl = '/users/address-book';
  static const String fcmTokenApiUrl = '/notifications/fcm-token';
  static const String notificationsApiUrl = '/notifications';
  static const String unreadCountApiUrl = '/notifications/unread-count';
  static String markAsReadApiUrl(String id) => '/notifications/$id/read';
  static const String markAllAsReadApiUrl = '/notifications/read-all';

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
