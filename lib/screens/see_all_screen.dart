import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:my_nady_project/core/constants/app_sizes.dart';

import '../core/constants/adaptive.dart';
import '../features/home/presentation/ui/see_all_ui.dart';
import 'package:my_nady_project/features/club/data/models/club_dto/datum.dart';

@RoutePage()
class SeeAllScreen extends StatefulWidget {
  const SeeAllScreen({super.key, required this.clubs});

  final List<Datum> clubs;

  @override
  State<SeeAllScreen> createState() => _SeeAllScreenState();
}

class _SeeAllScreenState extends State<SeeAllScreen> {
  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);
    return Scaffold(
      backgroundColor: theme.primaryBackground,

      body: CustomAdaptiveScreen.builder(
        mobile: SeeAllUi(clubs: widget.clubs),
        tablet: SeeAllUi(clubs: widget.clubs),
        desktop: SeeAllUi(clubs: widget.clubs),
      ),
    );
  }
}
