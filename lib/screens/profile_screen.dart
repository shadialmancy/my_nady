import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:my_nady_project/core/constants/app_sizes.dart';
import 'package:my_nady_project/features/home/presentation/ui/home_ui.dart';

import '../core/constants/adaptive.dart';

@RoutePage()
class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    final (theme, _) = appSettingsRecord(context);
    return Scaffold(
      backgroundColor: theme.primaryBackground,
      body: CustomAdaptiveScreen.builder(
        mobile: const HomeUi(),
        tablet: const HomeUi(),
        desktop: const HomeUi(),
      ),
    );
  }
}
