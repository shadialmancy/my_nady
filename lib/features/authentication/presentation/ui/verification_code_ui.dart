import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:my_nady_project/core/constants/app_sizes.dart';
import 'package:my_nady_project/core/router/app_router.dart';
import 'package:pinput/pinput.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'dart:async';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_nady_project/features/authentication/presentation/provider/auth_ui_service.dart';

class VerificationCodeUi extends ConsumerStatefulWidget {
  const VerificationCodeUi({super.key});

  @override
  ConsumerState<VerificationCodeUi> createState() => _VerificationCodeUiState();
}

class _VerificationCodeUiState extends ConsumerState<VerificationCodeUi> {
  int _start = 60;
  Timer? _timer;

  void startTimer() {
    _start = 60;
    _timer?.cancel();
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (_start == 0) {
        setState(() {
          timer.cancel();
        });
      } else {
        setState(() {
          _start--;
        });
      }
    });
  }

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);
    // final authState = ref.watch(authUiServiceProvider);

    return Padding(
      padding: .only(left: 3.sw, right: 3.sw, bottom: 5.sw),
      child: LayoutBuilder(
        builder: (context, constraints) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(minHeight: constraints.maxHeight),
              child: IntrinsicHeight(
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
                      onCompleted: (value) {
                        context.router.replaceAll([
                          ChangePasswordRoute(resetToken: value),
                        ]);
                      },
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          l10n.theOTPValidForRemainingTimeOf,
                          style: theme.labelLarge.copyWith(
                            color: theme.grey90,
                            fontWeight: .normal,
                          ),
                        ),
                        gapW4,
                        Text(
                          "$_start ${l10n.seconds}",
                          style: theme.labelLarge.copyWith(
                            color: theme.primary,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    gapH12,
                    TextButton(
                      onPressed: _start == 0
                          ? () {
                              ref
                                  .read(authUiServiceProvider.notifier)
                                  .resendVerification();
                              startTimer();
                            }
                          : null,
                      child: Text(
                        l10n.resendCode,
                        style: theme.labelLarge.copyWith(
                          color: _start == 0 ? theme.primary : theme.grey90,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                    const Spacer(),
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
                    gapH12,
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
