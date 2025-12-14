import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../dashboard/dashboard.dart';
import '../../screens/screens.dart';
import '../constants/app_constants.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: OnboardingRoute.page),
    AutoRoute(page: LoginRoute.page),
    AutoRoute(page: RegisterRoute.page),
    AutoRoute(page: ForgetPasswordRoute.page),
    AutoRoute(page: ChangePasswordRoute.page),
    AutoRoute(page: VerificationCodeRoute.page),
    AutoRoute(page: AddContactInformationRoute.page),
    AutoRoute(page: AddBillingAddressRoute.page),
    AutoRoute(page: AddCreditCardRoute.page),
    AutoRoute(page: ClubRoute.page),
    AutoRoute(page: ClubLocationRoute.page),
    AutoRoute(page: FilterRoute.page),
    AutoRoute(page: EditProfileRoute.page),
    AutoRoute(page: ChangePasswordSettingsRoute.page),
    AutoRoute(page: SettingsRoute.page),
    AutoRoute(page: SubscriptionRoute.page),
    AutoRoute(page: ModifyDairyRecordRoute.page),
    AutoRoute(page: ModifySubDairyRecordRoute.page),
    AutoRoute(page: SubDairyRecordRoute.page),
    AutoRoute(page: DairyRecordRoute.page),
    AutoRoute(page: TransactionFilterRoute.page),
    CustomRoute(
      page: DashboardLayoutRoute.page,
      initial: true,
      transitionsBuilder: TransitionsBuilders.fadeIn,
      children: [
        CustomRoute(page: HomeRoute.page, initial: true),
        CustomRoute(page: FavoriteClubRoute.page),
        CustomRoute(page: ProfileRoute.page),
        CustomRoute(page: ResourcesClubRoute.page),
        AutoRoute(page: TransactionHistoryRoute.page),
        AutoRoute(page: TransactionHistoryViewAllRoute.page),
      ],
    ),
    // AutoRoute(page: HomeRoute.page),
  ];
}

class MyObserver extends AutoRouterObserver {
  @override
  void didPush(Route route, Route? previousRoute) {
    logger.i('New route pushed: ${route.settings.name}');
  }

  @override
  void didInitTabRoute(TabPageRoute route, TabPageRoute? previousRoute) {
    logger.i('Tab route visited: ${route.name}');
  }

  @override
  void didChangeTabRoute(TabPageRoute route, TabPageRoute previousRoute) {
    logger.i('Tab route re-visited: ${route.name}');
  }

  @override
  void didPop(Route route, Route? previousRoute) {
    logger.i('Route popped: ${route.settings.name}');
  }
}
