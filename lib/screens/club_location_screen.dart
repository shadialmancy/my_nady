import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../core/constants/adaptive.dart';
import '../core/constants/app_sizes.dart';
import '../core/helpers/assets_helper.dart';
import '../features/club/presentation/ui/club_location_ui.dart';

@RoutePage()
class ClubLocationScreen extends StatefulWidget {
  const ClubLocationScreen({super.key});

  @override
  State<ClubLocationScreen> createState() => _ClubLocationScreenState();
}

class _ClubLocationScreenState extends State<ClubLocationScreen> {
  double horizontalPadding = 50;
  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);
    return Scaffold(
      backgroundColor: theme.primaryBackground,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leadingWidth: 50,
        toolbarHeight: 80,
        centerTitle: true,
        title: Text(
          l10n.location,
          style: theme.titleMedium.copyWith(color: theme.primary),
        ),
        leading: Padding(
          padding: .only(left: 5.sw),
          child: GestureDetector(
            onTap: () {
              context.router.maybePop();
            },
            child: SvgPicture.asset(AssetsHelper.backIcon),
          ),
        ),
      ),
      body: CustomAdaptiveScreen.builder(
        mobile: const ClubLocationUi(),
        tablet: const ClubLocationUi(),
        desktop: const ClubLocationUi(),
      ),
    );
  }
}
