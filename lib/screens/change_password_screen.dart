import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_nady_project/core/constants/app_sizes.dart';
import 'package:my_nady_project/core/helpers/assets_helper.dart';
import 'package:my_nady_project/features/authentication/presentation/ui/change_password_ui.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../core/constants/adaptive.dart';

@RoutePage()
class ChangePasswordScreen extends StatefulWidget {
  const ChangePasswordScreen({super.key});

  @override
  State<ChangePasswordScreen> createState() => _ChangePasswordScreenState();
}

class _ChangePasswordScreenState extends State<ChangePasswordScreen> {
  @override
  Widget build(BuildContext context) {
    final (theme, _) = appSettingsRecord(context);
    return Scaffold(
      backgroundColor: theme.primaryBackground,
      extendBody: true,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        systemOverlayStyle: SystemUiOverlayStyle.dark,
        leadingWidth: 50,
        toolbarHeight: 80,
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
        mobile: const ChangePasswordUi(),
        tablet: const ChangePasswordUi(),
        desktop: const ChangePasswordUi(),
      ),
    );
  }
}
