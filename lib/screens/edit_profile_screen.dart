import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:my_nady_project/core/constants/app_sizes.dart';

import '../core/constants/adaptive.dart';
import '../features/profile/presentation/ui/edit_profile_ui.dart';

@RoutePage()
class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);
    return Scaffold(
      backgroundColor: theme.primaryBackground,
      body: CustomAdaptiveScreen.builder(
        mobile: const EditProfileUi(),
        tablet: const EditProfileUi(),
        desktop: const EditProfileUi(),
      ),
    );
  }
}
