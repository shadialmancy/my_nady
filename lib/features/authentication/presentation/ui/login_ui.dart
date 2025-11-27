import 'package:flutter/material.dart';
import 'package:my_nady_project/core/constants/app_constants.dart';
import 'package:my_nady_project/core/helpers/assets_helper.dart';
import 'package:my_nady_project/core/shared/widgets/custom_text_field.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../../core/constants/app_sizes.dart';

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
      child: Padding(
        padding: EdgeInsets.all(2.sw),
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
            gapH80,
            CustomTextField(
              label: l10n.email,
              hint: l10n.enterYourEmail,
              labelStyle: theme.bodyMedium.copyWith(
                color: theme.primary,
                fontWeight: .normal,
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: theme.primary.withValues(alpha: 0.6),
                  width: 1,
                ),
                borderRadius: .circular(16),
              ),
              border: OutlineInputBorder(
                borderSide: BorderSide(
                  color: theme.primary.withValues(alpha: 0.6),
                  width: 1,
                ),
                borderRadius: .circular(16),
              ),
            ),
            gapH24,
            CustomTextField(
              label: l10n.password,
              hint: l10n.enterYourPassword,
              controller: passwordController,
              isPasswordField: true,
              labelStyle: theme.bodyMedium.copyWith(
                color: theme.primary,
                fontWeight: .normal,
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: theme.primary.withValues(alpha: 0.6),
                  width: 1,
                ),
                borderRadius: .circular(16),
              ),
              border: OutlineInputBorder(
                borderSide: BorderSide(
                  color: theme.primary.withValues(alpha: 0.6),
                  width: 1,
                ),
                borderRadius: .circular(16),
              ),
            ),
            SizedBox(
              height: 30,
              child: Stack(
                children: [
                  // Radio.adaptive(value: false,)
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
                            value: false,
                            groupValue: isRemembered,
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

                  Align(
                    alignment: Alignment.bottomRight,
                    child: Text(
                      l10n.forgotPassword,
                      style: theme.bodySmall.copyWith(
                        color: theme.primary,
                        fontWeight: .bold,
                      ),
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
