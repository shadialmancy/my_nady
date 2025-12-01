import 'package:flutter/material.dart';
import 'package:my_nady_project/core/constants/app_sizes.dart';
import 'package:my_nady_project/core/helpers/assets_helper.dart';
import 'package:my_nady_project/core/shared/widgets/widgets.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ChangePasswordUi extends StatelessWidget {
  const ChangePasswordUi({super.key});

  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);
    return Center(
      child: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 3.sw),
        child: Column(
          children: [
            Image.asset(
              AssetsHelper.changePasswordBanner,
              width: 300,
              fit: BoxFit.contain,
            ),
            gapH32,
            Text(
              l10n.changePassword,
              style: theme.headlineLarge.copyWith(
                color: theme.primary,
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),
            gapH8,
            Text(
              l10n.yourNewPasswordMustUniqueFromThosePreviouslyUsed,
              textAlign: .center,
              style: theme.bodyMedium.copyWith(
                color: theme.grey87,
                fontSize: 12,
                fontWeight: FontWeight.normal,
              ),
            ),
            gapH20,
            CustomTextField(
              label: l10n.password,
              hint: "******",
              keyboardType: TextInputType.visiblePassword,
              isPasswordField: true,
            ),
            gapH20,
            CustomTextField(
              label: l10n.confirmPassword,
              hint: "******",
              keyboardType: TextInputType.visiblePassword,
              isPasswordField: true,
            ),
            gapH20,
            CustomButton(
              width: double.infinity,
              title: l10n.send,
              titleStyle: theme.bodyMedium.copyWith(color: theme.whiteColor),
              backgroundColor: theme.primary,
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
