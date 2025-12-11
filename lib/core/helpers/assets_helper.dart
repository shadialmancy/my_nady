class AssetsHelper {
  const AssetsHelper._();
  static const String dumbBellIcon = 'assets/icons/Dumbbell.svg';
  static const String filterIcon = 'assets/icons/Filter.svg';
  static const String footballIcon = 'assets/icons/football.svg';
  static const String heart1Icon = 'assets/icons/heart (1).svg';
  static const String heart2Icon = 'assets/icons/heart (2).svg';
  static const String heartCardiogramIcon = 'assets/icons/Heart Cardiogram.svg';
  static const String homeIcon = 'assets/icons/home.svg';
  static const String notebookIcon = 'assets/icons/Notebook.svg';
  static const String notification1Icon = 'assets/icons/notification (1).svg';
  static const String place2Icon = 'assets/icons/Place-2.svg';
  static const String profileIcon = 'assets/icons/profile.svg';
  static const String swimmingIcon = 'assets/icons/Swimming.svg';
  static const String transfersIcon = 'assets/icons/Transfers_icon.svg';
  static const String yogaIcon = 'assets/icons/Yoga.svg';
  static const String searchIcon = 'assets/icons/search.svg';
  static const String gymBanner = 'assets/images/gym banner.jpg';
  static const String locationIcon = 'assets/icons/location.svg';
  static const String editIcon = 'assets/icons/edit.svg';
  static const String nextIcon = 'assets/icons/next_icon.svg';
  static const String settingsIcon = 'assets/icons/settings.svg';
  static const String subscriptionIcon = 'assets/icons/subscription.svg';
  static const String locationIcon2 = 'assets/icons/location_icon.svg';
  static const String logoutIcon = 'assets/icons/log_out.svg';
  static const String favoriteIcon = 'assets/icons/favorite.svg';
  static const String editProfileIcon = 'assets/icons/edit_profile.svg';
  static const String dairyRecordIcon = 'assets/icons/dairy_record.svg';
  static const String changePasswordIcon = 'assets/icons/change_password.svg';

  static const String authenticaionBanner =
      'assets/images/authentication_banner.png';
  static const String backIcon = 'assets/icons/back.svg';
  static const String forgotPasswordBanner =
      'assets/images/forgot_password.png';
  static const String locationPermissionBanner =
      'assets/images/location_permission.png';
  static const String changePasswordBanner = 'assets/images/reset_password.png';
  static const String googleLogo = 'assets/images/google_logo.png';
  static const String facebookLogo = 'assets/images/facebook_logo.png';
  static const String appleLogo = 'assets/images/apple_logo.png';
  static const String checkIcon = 'assets/icons/check.svg';
  static const String uncheckIcon = 'assets/icons/uncheck.svg';
  static const String personIcon = 'assets/icons/person.svg';
  static const String paymentSuccessBanner =
      'assets/images/payment_success_banner_dialog.png';
  static const String creditCardMeshBlur =
      'assets/images/cards_mesh_blur_bg.png';
  static const String paymentFailedBanner =
      'assets/images/payment_failed_banner_dialog.png';
  static const String paymentMethodBanner =
      'assets/images/payment_method_banner.png';
  static const String downloadIcon = 'assets/icons/download.svg';
  static const String cardIcon = 'assets/icons/card_icon.svg';
  static const String nfcIcon = 'assets/icons/nfc_icon.svg';
  static const String visaLogo = 'assets/icons/visa_logo.svg';
  static const String cardPlusIcon = 'assets/icons/plus.svg';
  static const String cartIcon = 'assets/icons/buy.svg';
  static const String cardChipIcon = 'assets/icons/card_chip_icon.svg';
  static const String currencyExchangeIcon =
      'assets/icons/currency_exchange.svg';

  // IMAGES HOLDER REMOVE LATER
  static const String gymImageHolder = 'assets/images/gym_image_holder.png';
  static const String profileBannerHolder = 'assets/images/profile_banner.png';
  static const String profileImageHolder = 'assets/images/profile_picture.png';
}

const List<Map<String, dynamic>> transactionHistoryData = [
  {
    "type": "Currency exchange",
    "date": "17 Sep 2023",
    "time": "11:21 AM",
    "amount": "\$ 350.00",
    "status": "pending",
    "icon": AssetsHelper.currencyExchangeIcon,
  },
  {
    "type": "Cash-in",
    "date": "17 Sep 2023",
    "time": "10:34 AM",
    "amount": "\$ 100.00",
    "status": "confirmed",
    "icon": AssetsHelper.cardPlusIcon,
  },
  {
    "type": "Cashback from purchase",
    "date": "16 Sep 2023",
    "time": "16:08 PM",
    "amount": "\$ 1.75",
    "status": "confirmed",
    "icon": AssetsHelper.cartIcon,
  },
  {
    "type": "Transfer to card",
    "date": "16 Sep 2023",
    "time": "11:21 AM",
    "amount": "\$ 9000.00",
    "status": "confirmed",
    "icon": AssetsHelper.cardIcon,
  },
  {
    "type": "Transfer to card",
    "date": "15 Sep 2023",
    "time": "11:21 AM",
    "amount": "\$ 9267.00",
    "status": "canceled",
    "icon": AssetsHelper.cardIcon,
  },
  {
    "type": "Cashback from purchase",
    "date": "14 Sep 2023",
    "time": "18:59 PM",
    "amount": "\$ 3.21",
    "status": "confirmed",
    "icon": AssetsHelper.cartIcon,
  },
];
