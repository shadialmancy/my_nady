import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:my_nady_project/core/constants/app_sizes.dart';

import '../core/constants/adaptive.dart';
import '../features/club/presentation/ui/club_ui.dart';

@RoutePage()
class ClubScreen extends StatefulWidget {
  const ClubScreen({super.key, required this.id});

  final String id;

  @override
  State<ClubScreen> createState() => _ClubScreenState();
}

class _ClubScreenState extends State<ClubScreen> {
  double horizontalPadding = 50;
  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);
    return Scaffold(
      backgroundColor: theme.primaryBackground,
      body: CustomAdaptiveScreen.builder(
        mobile: ClubUi(id: widget.id),
        tablet: ClubUi(id: widget.id),
        desktop: ClubUi(id: widget.id),
      ),
    );
  }
}
