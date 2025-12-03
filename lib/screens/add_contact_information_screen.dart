import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_nady_project/features/settings/presentation/ui/add_contact_information_ui.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../core/constants/adaptive.dart';
import '../core/constants/app_sizes.dart';
import '../core/helpers/assets_helper.dart';

@RoutePage()
class AddContactInformationScreen extends StatefulWidget {
  const AddContactInformationScreen({super.key});

  @override
  State<AddContactInformationScreen> createState() =>
      _AddContactInformationScreenState();
}

class _AddContactInformationScreenState
    extends State<AddContactInformationScreen> {
  double horizontalPadding = 50;
  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);
    return Scaffold(
      backgroundColor: theme.primaryBackground,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leadingWidth: 50,
        toolbarHeight: 80,
        centerTitle: true,
        title: Text(
          l10n.location,
          style: theme.titleMedium.copyWith(color: theme.primary),
        ),
        leading: Padding(
          padding: .only(left: 5.sw),
          child: GestureDetector(
            onTap: () {
              context.router.maybePop();
            },
            child: SvgPicture.asset(AssetsHelper.backIcon),
          ),
        ),
      ),
      body: CustomAdaptiveScreen.builder(
        mobile: AddContactInformationUi(),
        tablet: AddContactInformationUi(),
        desktop: AddContactInformationUi(),
      ),
    );
  }
}
