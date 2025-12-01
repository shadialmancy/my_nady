import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_nady_project/core/constants/app_sizes.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../core/constants/adaptive.dart';
import '../core/helpers/assets_helper.dart';
import '../features/gym/presentation/ui/gym_ui.dart';

@RoutePage()
class GymScreen extends StatefulWidget {
  const GymScreen({super.key});

  @override
  State<GymScreen> createState() => _GymScreenState();
}

class _GymScreenState extends State<GymScreen> {
  double horizontalPadding = 50;
  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);
    return Scaffold(
      backgroundColor: theme.primaryBackground,
      extendBody: true,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leadingWidth: 50,
        leading: Padding(
          padding: .only(left: 5.sw),
          child: GestureDetector(
            onTap: () {
              context.router.maybePop();
            },
            child: SvgPicture.asset(
              AssetsHelper.backIcon,
              colorFilter: ColorFilter.mode(theme.white, BlendMode.srcIn),
            ),
          ),
        ),
        title: Text(
          "gym name",
          style: theme.titleMedium.copyWith(color: theme.white),
        ),
      ),
      body: CustomAdaptiveScreen.builder(
        mobile: const GymUi(),
        tablet: const GymUi(),
        desktop: const GymUi(),
      ),
    );
  }
}
