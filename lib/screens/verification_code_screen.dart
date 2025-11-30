import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:my_nady_project/core/constants/app_sizes.dart';
import 'package:my_nady_project/features/authentication/presentation/ui/verification_code_ui.dart';

import '../core/constants/adaptive.dart';

@RoutePage()
class VerificationCodeScreen extends StatefulWidget {
  const VerificationCodeScreen({super.key});

  @override
  State<VerificationCodeScreen> createState() => _VerificationCodeScreenState();
}

class _VerificationCodeScreenState extends State<VerificationCodeScreen> {
  double horizontalPadding = 50;
  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);
    return Scaffold(
      backgroundColor: theme.primaryBackground,

      body: CustomAdaptiveScreen.builder(
        mobile: const VerificationCodeUi(),
        tablet: const VerificationCodeUi(),
        desktop: const VerificationCodeUi(),
      ),
    );
  }
}
