import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_nady_project/core/constants/app_sizes.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../core/constants/adaptive.dart';
import '../core/helpers/assets_helper.dart';
import '../core/router/app_router.dart';
import '../features/dairy_record/presentation/ui/sub_dairy_record_ui.dart';

@RoutePage()
class SubDairyRecordScreen extends StatelessWidget {
  const SubDairyRecordScreen({super.key, this.title, this.date});
  final String? title;
  final String? date;
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
      floatingActionButton: FloatingActionButton(
        backgroundColor: theme.primary,
        shape: const CircleBorder(),
        onPressed: () {
          context.router.push(const ModifySubDairyRecordRoute());
        },
        child: Icon(Icons.add, color: theme.white, size: 30),
      ),
      body: CustomAdaptiveScreen.builder(
        mobile: const SubDairyRecordUi(
          title: "🧍‍Chest/Bench Exercises #1",
          date: "July 23 2025",
        ),
        tablet: const SubDairyRecordUi(
          title: "🧍‍Chest/Bench Exercises #1",
          date: "July 23 2025",
        ),
        desktop: const SubDairyRecordUi(
          title: "🧍‍Chest/Bench Exercises #1",
          date: "July 23 2025",
        ),
      ),
    );
  }
}
