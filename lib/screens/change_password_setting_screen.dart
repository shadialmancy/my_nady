import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:my_nady_project/core/constants/app_sizes.dart';

import '../core/constants/adaptive.dart';
import '../features/profile/presentation/ui/change_password_settings_ui.dart';

@RoutePage()
class ChangePasswordSettingsScreen extends StatelessWidget {
  const ChangePasswordSettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);
    return Scaffold(
      backgroundColor: theme.primaryBackground,
      body: CustomAdaptiveScreen.builder(
        mobile: const ChangePasswordSettingsUi(),
        tablet: const ChangePasswordSettingsUi(),
        desktop: const ChangePasswordSettingsUi(),
      ),
    );
  }
}
