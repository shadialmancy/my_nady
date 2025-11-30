// ignore_for_file: deprecated_member_use

import 'package:auto_route/auto_route.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:my_nady_project/core/router/app_router.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../../core/constants/app_constants.dart';
import '../../../../core/constants/app_sizes.dart';
import '../../../../core/helpers/assets_helper.dart';
import '../../../../core/shared/widgets/widgets.dart';

class LoginUi extends StatefulWidget {
  const LoginUi({super.key});

  @override
  State<LoginUi> createState() => _LoginUiState();
}

class _LoginUiState extends State<LoginUi> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  bool isRemembered = false;

  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);
    return Center(
      child: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 3.sw),
        child: Column(
          mainAxisAlignment: .center,
          crossAxisAlignment: .center,
          children: [
            Text(
              l10n.welcomeBack,
              style: theme.titleLarge.copyWith(
                color: theme.primary,
                fontSize: 30,
                fontWeight: .bold,
              ),
            ),
            gapH8,
            Text(
              l10n.loginToYourAccount,
              style: theme.labelMedium.copyWith(
                color: theme.primaryText.withValues(alpha: 0.7),
                fontWeight: .normal,
              ),
            ),
            gapH32,
            Image.asset(AssetsHelper.authenticaionBanner),
            gapH64,
            CustomTextField(
              label: l10n.email,
              hint: l10n.enterYourEmail,
              controller: emailController,
            ),
            gapH24,
            CustomTextField(
              label: l10n.password,
              hint: l10n.enterYourPassword,
              controller: passwordController,
              isPasswordField: true,
            ),
            SizedBox(
              height: 30,
              child: Stack(
                children: [
                  Positioned(
                    left: -10,
                    top: 3,
                    child: SizedBox(
                      width: 200,
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            isRemembered = !isRemembered;
                            logger.i(isRemembered);
                          });
                        },
                        child: ListTileTheme(
                          horizontalTitleGap: 0,
                          contentPadding: .zero,
                          child: RadioListTile<bool>(
                            radioScaleFactor: 0.7,
                            visualDensity: VisualDensity(
                              horizontal: -4,
                              vertical: -4,
                            ),
                            dense: true,
                            value: isRemembered,
                            groupValue: true,
                            activeColor: theme.primary,
                            fillColor: WidgetStatePropertyAll(theme.primary),
                            materialTapTargetSize: .shrinkWrap,
                            title: Text(
                              l10n.rememberMe,
                              style: theme.bodySmall.copyWith(
                                color: theme.primaryText.withValues(alpha: 0.6),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      context.router.push(ForgetPasswordRoute());
                    },
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: Text(
                        l10n.forgotPassword,
                        style: theme.bodySmall.copyWith(
                          color: theme.primary,
                          fontWeight: .bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            gapH24,
            CustomButton(
              backgroundColor: theme.primary,
              title: l10n.login,
              shape: RoundedRectangleBorder(borderRadius: .circular(10)),
              width: .infinity,
              titleStyle: theme.bodyMedium.copyWith(
                color: theme.white,
                fontWeight: .w600,
              ),
            ),
            Padding(
              padding: .symmetric(horizontal: 30, vertical: 1.5.sh),
              child: Row(
                children: [
                  Expanded(
                    child: Divider(
                      color: theme.dividerColor.withValues(alpha: 0.6),
                      height: 1,
                    ),
                  ),
                  Padding(
                    padding: const .symmetric(horizontal: 12),
                    child: Text(
                      l10n.or,
                      style: theme.bodyMedium.copyWith(
                        color: theme.primaryText.withValues(alpha: 0.6),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Divider(
                      color: theme.dividerColor.withValues(alpha: 0.6),
                      height: 1,
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: .center,
              children: [
                Image.asset(AssetsHelper.googleLogo, width: 35),
                gapW32,
                Image.asset(AssetsHelper.facebookLogo, width: 35),
                gapW32,
                Image.asset(AssetsHelper.appleLogo, width: 35),
              ],
            ),
            gapH12,
            RichText(
              text: TextSpan(
                text: l10n.dontHaveAccount,
                style: theme.titleSmall.copyWith(fontWeight: .w500),
                children: [
                  TextSpan(
                    text: ' ${l10n.signUp}',
                    recognizer: TapGestureRecognizer()
                      ..onTap = () => context.router.push(RegisterRoute()),
                    style: theme.titleSmall.copyWith(
                      fontWeight: .w600,
                      color: theme.primary,
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
