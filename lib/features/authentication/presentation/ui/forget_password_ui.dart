import 'package:flutter/material.dart';
import 'package:my_nady_project/core/constants/app_sizes.dart';
import 'package:my_nady_project/core/helpers/assets_helper.dart';
import 'package:my_nady_project/core/shared/widgets/widgets.dart';

class ForgetPasswordUi extends StatelessWidget {
  const ForgetPasswordUi({super.key});

  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);
    return Center(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              AssetsHelper.forgotPasswordBanner,
              width: 359,
              height: 359,
            ),
            gapH32,
            Text(
              "${l10n.forgotPassword}?",
              style: theme.headlineLarge.copyWith(
                color: theme.primary,
                fontSize: 36,
                fontWeight: FontWeight.bold,
              ),
            ),
            gapH8,
            Text(
              l10n.dontWorryItOccursPleaseEnterEmailAddressLinkedWithYourAccount,
              style: theme.bodyMedium.copyWith(
                color: theme.grey87,
                fontSize: 16,
                fontWeight: FontWeight.normal,
              ),
            ),
            gapH48,
            CustomTextField(
              label: l10n.email,
              hint: l10n.enterYourEmail,
              keyboardType: TextInputType.emailAddress,
            ),
            gapH48,
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
