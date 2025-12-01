import 'package:flutter/material.dart';
import 'package:my_nady_project/core/constants/app_sizes.dart';
import 'package:pinput/pinput.dart';
import 'package:responsive_builder/responsive_builder.dart';

class VerificationCodeUi extends StatelessWidget {
  const VerificationCodeUi({super.key});

  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);
    return Padding(
      padding: .symmetric(horizontal: 3.sw),
      child: Column(
        children: [
          Text(
            l10n.enterVerificationCode,
            style: theme.titleLarge.copyWith(
              color: theme.primary,
              fontSize: 24,
              fontWeight: .bold,
            ),
          ),
          gapH8,
          RichText(
            textAlign: .center,
            text: TextSpan(
              text: l10n.enterTheOTPSentToYourMobileNumber,
              style: theme.labelLarge.copyWith(
                color: theme.grey90,
                fontWeight: .normal,
              ),
              children: [
                TextSpan(
                  text: ' (+201234567890) ',
                  style: theme.labelLarge.copyWith(
                    color: theme.primaryText,
                    fontWeight: .normal,
                  ),
                ),
                TextSpan(
                  text: l10n.toProceed,
                  style: theme.labelLarge.copyWith(
                    color: theme.grey90,
                    fontWeight: .normal,
                  ),
                ),
              ],
            ),
          ),
          gapH12,
          Pinput(
            length: 6,
            defaultPinTheme: PinTheme(
              width: 56,
              height: 56,
              textStyle: TextStyle(
                fontSize: 20,
                color: theme.primaryText,
                fontWeight: FontWeight.w600,
              ),
              decoration: BoxDecoration(
                border: Border.all(
                  color: theme.verificationCodeBorderColor,
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(14),
              ),
            ),
          ),
          gapH32,
          Text(
            l10n.theOTPValidForRemainingTimeOf,
            style: theme.labelLarge.copyWith(
              color: theme.grey90,
              fontWeight: .normal,
            ),
          ),
          Align(
            alignment: .bottomCenter,
            child: RichText(
              textAlign: .center,
              text: TextSpan(
                text: l10n.byGivingYourInformationYouAgreeToOur,
                style: theme.labelLarge.copyWith(
                  color: theme.grey90,
                  fontWeight: .normal,
                ),
                children: [
                  TextSpan(
                    text: ' ${l10n.termsConditions} ',
                    style: theme.labelLarge.copyWith(
                      color: theme.primary,
                      fontWeight: .normal,
                    ),
                  ),
                  TextSpan(
                    text: 'and ',
                    style: theme.labelLarge.copyWith(
                      color: theme.grey90,
                      fontWeight: .normal,
                    ),
                  ),
                  TextSpan(
                    text: l10n.privacyPolicy,
                    style: theme.labelLarge.copyWith(
                      color: theme.primary,
                      fontWeight: .normal,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
