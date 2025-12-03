import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../../core/constants/app_sizes.dart';
import '../../../../core/router/app_router.dart';
import '../../../../core/shared/widgets/widgets.dart';
import '../widgets/widgets.dart';

class AddContactInformationUi extends StatelessWidget {
  AddContactInformationUi({super.key});

  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);
    return SingleChildScrollView(
      padding: .symmetric(horizontal: 3.sw),
      child: Column(
        children: [
          TitleWithCustomTextField(
            title: l10n.email,
            hintText: l10n.email,
            controller: emailController,
          ),
          gapH12,
          TitleWithCustomTextField(
            title: l10n.phone,
            hintText: l10n.phone,
            controller: phoneController,
          ),
          gapH64,
          CustomButton(
            title: l10n.pay,
            backgroundColor: theme.primary,
            onPressed: () {
              context.router.push(const AddBillingAddressRoute());
            },
          ),
        ],
      ),
    );
  }
}
