import 'package:auto_route/auto_route.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:my_nady_project/core/router/app_router.dart';
import 'package:my_nady_project/core/shared/widgets/widgets.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../core/constants/app_sizes.dart';

class OnboardingUi extends StatelessWidget {
  const OnboardingUi({super.key});

  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);
    return Padding(
      padding: .all(3.sw),
      child: Center(
        child: Column(
          crossAxisAlignment: .center,
          mainAxisAlignment: .center,
          children: [
            RichText(
              text: TextSpan(
                text: l10n.welcomeTo,
                style: theme.headlineLarge.copyWith(
                  fontWeight: .bold,
                  fontSize: 26,
                ),
                children: [
                  TextSpan(
                    text: l10n.myNady,
                    style: theme.headlineLarge.copyWith(
                      fontWeight: .bold,
                      fontSize: 26,
                      color: theme.secondary,
                    ),
                  ),
                ],
              ),
            ),
            gapH48,
            Text(
              l10n.yourFitnessJourneyBeginsHereWhereDisciplineMeetsPassion,
              textAlign: .center,
              style: theme.titleSmall.copyWith(fontWeight: .w500),
            ),
            gapH64,
            CustomButton(
              backgroundColor: theme.primary,
              title: l10n.letsGetStarted,
              width: double.infinity,
              onPressed: () => context.router.replace(RegisterRoute()),
              shape: RoundedRectangleBorder(borderRadius: .circular(12)),
              titleStyle: theme.labelLarge.copyWith(
                color: theme.white,
                fontWeight: .w500,
              ),
            ),
            gapH24,
            RichText(
              text: TextSpan(
                text: l10n.alreadyHaveAnAccount,
                style: theme.titleSmall.copyWith(fontWeight: .w500),
                children: [
                  TextSpan(
                    text: ' ${l10n.login}',
                    recognizer: TapGestureRecognizer()
                      ..onTap = () => context.router.replace(LoginRoute()),
                    style: theme.titleSmall.copyWith(
                      fontWeight: .w600,
                      color: theme.secondary,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
