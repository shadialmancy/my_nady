import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:my_nady_project/core/constants/app_sizes.dart';
import 'package:my_nady_project/features/favorite_club/presentation/ui/favorite_club_ui.dart';

import '../core/constants/adaptive.dart';

@RoutePage()
class FavoriteClubScreen extends StatefulWidget {
  const FavoriteClubScreen({super.key});

  @override
  State<FavoriteClubScreen> createState() => _FavoriteClubScreenState();
}

class _FavoriteClubScreenState extends State<FavoriteClubScreen> {
  @override
  Widget build(BuildContext context) {
    final (theme, _) = appSettingsRecord(context);
    return Scaffold(
      backgroundColor: theme.primaryBackground,
      body: CustomAdaptiveScreen.builder(
        mobile: const FavoriteClubUi(),
        tablet: const FavoriteClubUi(),
        desktop: const FavoriteClubUi(),
      ),
    );
  }
}
