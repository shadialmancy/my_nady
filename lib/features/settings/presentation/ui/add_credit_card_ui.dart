import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:my_nady_project/core/constants/app_sizes.dart';
import 'package:my_nady_project/core/router/app_router.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../../core/helpers/assets_helper.dart';
import '../../../../core/shared/widgets/widgets.dart';
import '../widgets/widgets.dart';

class AddCreditCardUi extends StatelessWidget {
  AddCreditCardUi({super.key});

  final TextEditingController nameOnCardController = TextEditingController();
  final TextEditingController cardNumberController = TextEditingController();
  final TextEditingController cvvController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);
    return SingleChildScrollView(
      padding: .symmetric(horizontal: 3.sw),
      child: Column(
        children: [
          Image.asset(AssetsHelper.paymentMethodBanner),
          gapH20,
          TitleWithCustomTextField(
            title: l10n.nameOnCard,
            hintText: l10n.nameOnCard,
            controller: nameOnCardController,
          ),
          gapH12,
          TitleWithCustomTextField(
            title: l10n.cardNumber,
            hintText: l10n.cardNumber,
            controller: cardNumberController,
          ),
          gapH12,
          ExpiryDateTextField(),
          gapH12,
          TitleWithCustomTextField(
            title: "CVV",
            hintText: "CVV",
            controller: cvvController,
          ),
          gapH64,
          CustomButton(
            title: l10n.continueTxt,
            width: .infinity,
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
