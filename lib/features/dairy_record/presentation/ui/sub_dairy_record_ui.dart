import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:my_nady_project/features/dairy_record/presentation/widgets/dairy_recording_card.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../../core/constants/app_sizes.dart';
import '../../../../core/shared/widgets/widgets.dart';
import '../../data/models/dairy_dto/datum.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../provider/dairy_record_ui_service.dart';

class SubDairyRecordUi extends ConsumerWidget {
  const SubDairyRecordUi({
    super.key,
    required this.diaryId,
    this.title,
    this.date,
    this.initialDatum,
  });
  final String diaryId;
  final String? title;
  final String? date;
  final DairyDatum? initialDatum;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final (theme, l10n) = appSettingsRecord(context);
    final dairyRecordsState = ref.watch(dairyRecordUiServiceProvider);

    return AsyncValueWidget(
      value: dairyRecordsState,
      builder: (dairy) {
        final record =
            dairy?.data?.firstWhereOrNull((d) => d.id == diaryId) ??
            initialDatum;

        if (record == null) {
          return Center(child: Text(l10n.fieldRequired));
        }

        return SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 3.sw, vertical: 3.sh),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    record.title ?? title ?? "",
                    style: theme.titleMedium.copyWith(
                      color: theme.primary,
                      fontWeight: FontWeight.w700,
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
                children: (record.items ?? []).map((item) {
                  return DairyRecordingCard(
                    isSub: true,
                    title: item.title,
                    content: item.description,
                    isCompleted: item.isCompleted ?? false,
                    onChanged: (value) {
                      ref
                          .read(dairyRecordUiServiceProvider.notifier)
                          .updateDairyItem(
                            itemId: item.id!,
                            isCompleted: value,
                          );
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
      },
    );
  }
}
