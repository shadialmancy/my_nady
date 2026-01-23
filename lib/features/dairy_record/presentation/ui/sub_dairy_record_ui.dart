import 'package:flutter/material.dart';
import 'package:my_nady_project/features/dairy_record/presentation/widgets/dairy_recording_card.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../../core/constants/app_sizes.dart';

import '../../data/models/dairy_dto/datum.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../provider/dairy_record_ui_service.dart';

class SubDairyRecordUi extends ConsumerWidget {
  const SubDairyRecordUi({super.key, this.title, this.date, this.datum});
  final String? title;
  final String? date;
  final DairyDatum? datum;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final (theme, l10n) = appSettingsRecord(context);
    return SingleChildScrollView(
      padding: .symmetric(horizontal: 3.sw, vertical: 3.sh),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: .spaceBetween,
            children: [
              Text(
                title ?? "",
                style: theme.titleMedium.copyWith(
                  color: theme.primary,
                  fontWeight: .w700,
                ),
              ),
              Text(
                date ?? "",
                style: theme.labelMedium.copyWith(
                  color: theme.primary.withValues(alpha: 0.6),
                ),
              ),
            ],
          ),
          gapH24,
          Column(
            children: (datum?.items ?? []).map((item) {
              return DairyRecordingCard(
                isSub: true,
                title: item.title,
                content: item.description,
                isCompleted: item.isCompleted ?? false,
                onChanged: (value) {
                  ref
                      .read(dairyRecordUiServiceProvider.notifier)
                      .updateDairyItem(itemId: item.id!, isCompleted: value);
                },
                onDelete: () {
                  ref
                      .read(dairyRecordUiServiceProvider.notifier)
                      .deleteDairyItem(item.id!);
                },
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
