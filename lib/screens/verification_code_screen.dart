import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_nady_project/core/constants/app_sizes.dart';
import 'package:my_nady_project/core/helpers/assets_helper.dart';
import 'package:my_nady_project/features/authentication/presentation/ui/verification_code_ui.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../core/constants/adaptive.dart';

@RoutePage()
class VerificationCodeScreen extends StatefulWidget {
  const VerificationCodeScreen({super.key});

  @override
  State<VerificationCodeScreen> createState() => _VerificationCodeScreenState();
}

class _VerificationCodeScreenState extends State<VerificationCodeScreen> {
  @override
  Widget build(BuildContext context) {
    final (theme, _) = appSettingsRecord(context);
    return Scaffold(
      backgroundColor: theme.primaryBackground,
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
        mobile: const VerificationCodeUi(),
        tablet: const VerificationCodeUi(),
        desktop: const VerificationCodeUi(),
      ),
    );
  }
}
