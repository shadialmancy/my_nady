import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:my_nady_project/core/constants/app_sizes.dart';
import 'package:my_nady_project/features/splash/presentation/ui/splash_ui.dart';

import '../core/constants/adaptive.dart';

@RoutePage()
class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final (theme, _) = appSettingsRecord(context);
    return Scaffold(
      backgroundColor: theme.primaryBackground,
      body: CustomAdaptiveScreen.builder(
        mobile: const SplashUi(),
        tablet: const SplashUi(),
        desktop: const SplashUi(),
      ),
    );
  }
}
