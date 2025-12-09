import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../../core/constants/app_sizes.dart';
import '../../../../core/helpers/assets_helper.dart';
import '../../../../core/shared/widgets/widgets.dart';
import '../widgets/widget.dart';

class ChangePasswordSettingsUi extends StatefulWidget {
  const ChangePasswordSettingsUi({super.key});

  @override
  State<ChangePasswordSettingsUi> createState() =>
      _ChangePasswordSettingsUiState();
}

class _ChangePasswordSettingsUiState extends State<ChangePasswordSettingsUi> {
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController newPasswordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();
  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);
    return SingleChildScrollView(
      child: Column(
        children: [
          const ProfileAppbar(),
          gapH16,
          Row(
            mainAxisAlignment: .center,
            crossAxisAlignment: .center,
            children: [
              SvgPicture.asset(AssetsHelper.editProfileIcon),
              gapW8,
              Text(
                l10n.editProfile,
                style: theme.headlineSmall.copyWith(color: theme.primary),
              ),
            ],
          ),
          gapH16,
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 3.sw),
            child: Column(
              children: [
                CustomTextField(
                  label: l10n.name,
                  controller: passwordController,
                  isPasswordField: true,
                ),
                gapH16,
                CustomTextField(
                  label: l10n.email,
                  controller: newPasswordController,
                  isPasswordField: true,
                ),
                gapH16,
                CustomTextField(
                  label: l10n.email,
                  controller: confirmPasswordController,
                  isPasswordField: true,
                ),

                gapH48,
                CustomButton(
                  title: l10n.confirm,
                  onPressed: () {},
                  backgroundColor: theme.primary,
                  titleStyle: theme.bodyMedium.copyWith(
                    color: theme.white,
                    fontWeight: .w600,
                  ),
                  shape: RoundedRectangleBorder(borderRadius: .circular(10)),
                  width: .infinity,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
