import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:my_nady_project/core/constants/app_sizes.dart';
import 'package:my_nady_project/features/authentication/presentation/ui/login_ui.dart';

import '../core/constants/adaptive.dart';

@RoutePage()
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    final (theme, _) = appSettingsRecord(context);
    return Scaffold(
      backgroundColor: theme.primaryBackground,

      body: CustomAdaptiveScreen.builder(
        mobile: const LoginUi(),
        tablet: const LoginUi(),
        desktop: const LoginUi(),
      ),
    );
  }
}
