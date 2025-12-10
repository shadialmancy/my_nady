import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_nady_project/core/constants/app_sizes.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../core/constants/adaptive.dart';
import '../core/helpers/assets_helper.dart';
import '../features/dairy_record/presentation/ui/modify_sub_dairy_record_ui.dart';

@RoutePage()
class ModifySubDairyRecordScreen extends StatelessWidget {
  const ModifySubDairyRecordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);
    return Scaffold(
      backgroundColor: theme.primaryBackground,
      appBar: AppBar(
        backgroundColor: theme.white,
        leadingWidth: 50,
        surfaceTintColor: theme.white,
        centerTitle: true,
        leading: Padding(
          padding: .only(left: 5.sw),
          child: GestureDetector(
            onTap: () {
              context.router.maybePop();
            },
            child: SvgPicture.asset(AssetsHelper.backIcon),
          ),
        ),
        title: Text(
          l10n.dairyRecording,
          style: theme.headlineMedium.copyWith(color: theme.primary),
        ),
      ),
      body: CustomAdaptiveScreen.builder(
        mobile: const ModifySubDairyRecordUi(),
        tablet: const ModifySubDairyRecordUi(),
        desktop: const ModifySubDairyRecordUi(),
      ),
    );
  }
}
