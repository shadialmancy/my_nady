import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_nady_project/core/constants/app_sizes.dart';
import 'package:my_nady_project/features/home/presentation/ui/home_ui.dart';

import '../core/constants/adaptive.dart';

@RoutePage()
class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<HomeScreen> createState() => _TripScreenState();
}

class _TripScreenState extends ConsumerState<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);
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
