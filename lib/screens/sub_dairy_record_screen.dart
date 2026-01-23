import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_nady_project/core/constants/app_sizes.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../core/constants/adaptive.dart';
import '../core/helpers/assets_helper.dart';
import '../core/router/app_router.dart';
import '../features/dairy_record/presentation/ui/sub_dairy_record_ui.dart';

import '../features/dairy_record/data/models/dairy_dto/datum.dart';

@RoutePage()
class SubDairyRecordScreen extends StatelessWidget {
  const SubDairyRecordScreen({super.key, this.title, this.date, this.datum});
  final String? title;
  final String? date;
  final DairyDatum? datum;
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
          context.router.push(ModifySubDairyRecordRoute(diaryId: datum!.id!));
        },
        child: Icon(Icons.add, color: theme.white, size: 30),
      ),
      body: CustomAdaptiveScreen.builder(
        mobile: SubDairyRecordUi(title: title, date: date, datum: datum),
        tablet: SubDairyRecordUi(title: title, date: date, datum: datum),
        desktop: SubDairyRecordUi(title: title, date: date, datum: datum),
      ),
    );
  }
}
