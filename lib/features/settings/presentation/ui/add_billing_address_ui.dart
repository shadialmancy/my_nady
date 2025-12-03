import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../../core/constants/app_sizes.dart';
import '../../../../core/shared/widgets/widgets.dart';
import '../widgets/widgets.dart';

class AddBillingAddressUi extends StatelessWidget {
  AddBillingAddressUi({super.key});

  final TextEditingController countrycontroller = TextEditingController();
  final TextEditingController addresscontroller = TextEditingController();
  final TextEditingController citycontroller = TextEditingController();
  final TextEditingController statecontroller = TextEditingController();
  final TextEditingController zipCodecontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);
    return SingleChildScrollView(
      padding: .symmetric(horizontal: 3.sw),
      child: Column(
        children: [
          TitleWithCustomTextField(
            title: l10n.country,
            hintText: l10n.country,
            controller: countrycontroller,
          ),
          gapH12,
          TitleWithCustomTextField(
            title: l10n.address,
            hintText: l10n.address,
            controller: addresscontroller,
          ),
          gapH12,
          TitleWithCustomTextField(
            title: l10n.city,
            hintText: l10n.city,
            controller: citycontroller,
          ),
          gapH12,
          TitleWithCustomTextField(
            title: l10n.state,
            hintText: l10n.state,
            controller: statecontroller,
          ),
          gapH12,
          TitleWithCustomTextField(
            title: l10n.zipCode,
            hintText: l10n.zipCode,
            controller: zipCodecontroller,
          ),
          gapH64,
          CustomButton(
            title: l10n.continueTxt,
            backgroundColor: theme.primary,
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
