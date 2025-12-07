import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:my_nady_project/core/constants/app_sizes.dart';
import 'package:my_nady_project/features/resources_club/presentation/ui/resources_club_ui.dart';

import '../core/constants/adaptive.dart';

@RoutePage()
class ResourcesClubScreen extends StatefulWidget {
  const ResourcesClubScreen({super.key});

  @override
  State<ResourcesClubScreen> createState() => _ResourcesClubScreenState();
}

class _ResourcesClubScreenState extends State<ResourcesClubScreen> {
  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);
    return Scaffold(
      backgroundColor: theme.primaryBackground,

      body: CustomAdaptiveScreen.builder(
        mobile: const ResourcesClubUi(),
        tablet: const ResourcesClubUi(),
        desktop: const ResourcesClubUi(),
      ),
    );
  }
}
