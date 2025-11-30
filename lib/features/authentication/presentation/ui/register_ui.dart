import 'package:auto_route/auto_route.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:my_nady_project/core/shared/widgets/widgets.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../../core/constants/app_sizes.dart';
import '../../../../core/helpers/assets_helper.dart';
import '../../../../core/router/app_router.dart';
import '../widgets/gender_dropdown.dart';

class RegisterUi extends StatefulWidget {
  const RegisterUi({super.key});

  @override
  State<RegisterUi> createState() => _RegisterUiState();
}

class _RegisterUiState extends State<RegisterUi> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();
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
              l10n.signUp,
              style: theme.titleLarge.copyWith(
                color: theme.primary,
                fontSize: 30,
                fontWeight: .bold,
              ),
            ),
            gapH8,
            Text(
              l10n.createNewAccount,
              style: theme.labelMedium.copyWith(
                color: theme.primaryText.withValues(alpha: 0.7),
                fontWeight: .normal,
              ),
            ),
            gapH16,
            CustomTextField(
              label: l10n.name,
              hint: l10n.enterYourName,
              controller: nameController,
            ),
            gapH24,
            CustomTextField(
              label: l10n.email,
              hint: l10n.enterYourEmail,
              controller: emailController,
            ),
            gapH24,
            GenderDropdown(),
            gapH24,
            CustomPhoneNumberTextField(
              label: l10n.phone,
              hint: "1087654321",
              controller: phoneController,
            ),
            gapH24,
            CustomTextField(
              label: l10n.password,
              hint: "*******",
              controller: passwordController,
              isPasswordField: true,
            ),
            gapH24,
            CustomTextField(
              label: l10n.confirmPassword,
              hint: "*******",
              controller: confirmPasswordController,
              isPasswordField: true,
            ),
            gapH24,
            CustomButton(
              backgroundColor: theme.primary,
              title: l10n.signUp,
              shape: RoundedRectangleBorder(borderRadius: .circular(10)),
              width: .infinity,
              titleStyle: theme.bodyMedium.copyWith(
                color: theme.white,
                fontWeight: .w600,
              ),
              onPressed: () => showBirthdayDialog(context),
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
                text: l10n.alreadyHaveAnAccount,
                style: theme.titleSmall.copyWith(fontWeight: .w500),
                children: [
                  TextSpan(
                    text: ' ${l10n.login}',
                    recognizer: TapGestureRecognizer()
                      ..onTap = () => context.router.push(LoginRoute()),
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
