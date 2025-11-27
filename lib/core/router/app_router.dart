import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:my_nady_project/screens/home_screen.dart';

import '../../dashboard/dashboard.dart';
import '../../screens/screens.dart';
import '../constants/app_constants.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: OnboardingRoute.page, initial: true),
    AutoRoute(page: LoginRoute.page),
    AutoRoute(page: RegisterRoute.page),
    CustomRoute(
      page: DashboardLayoutRoute.page,

      transitionsBuilder: TransitionsBuilders.fadeIn,
      children: [CustomRoute(page: HomeRoute.page)],
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
