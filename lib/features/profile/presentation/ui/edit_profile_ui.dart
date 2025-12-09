import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_nady_project/core/constants/app_sizes.dart';
import 'package:my_nady_project/core/helpers/assets_helper.dart';
import 'package:my_nady_project/core/shared/widgets/widgets.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../widgets/widget.dart';

class EditProfileUi extends StatefulWidget {
  const EditProfileUi({super.key});

  @override
  State<EditProfileUi> createState() => _EditProfileUiState();
}

class _EditProfileUiState extends State<EditProfileUi> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);
    return SingleChildScrollView(
      child: Column(
        children: [
          const ProfileAppbar(isEditable: true),
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
                CustomTextField(label: l10n.name, controller: nameController),
                gapH16,
                CustomTextField(label: l10n.email, controller: emailController),
                gapH16,
                CustomPhoneNumberTextField(
                  label: l10n.phone,
                  hint: "1087654321",
                  controller: phoneController,
                ),
                gapH48,
                CustomButton(
                  title: l10n.confirm,
                  onPressed: () {
                    context.router.maybePop();
                  },
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
