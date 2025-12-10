import 'package:flutter/material.dart';
import 'package:my_nady_project/features/dairy_record/presentation/widgets/dairy_recording_card.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../../core/constants/app_sizes.dart';

class SubDairyRecordUi extends StatelessWidget {
  const SubDairyRecordUi({super.key, this.title, this.date});
  final String? title;
  final String? date;
  @override
  Widget build(BuildContext context) {
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
            children: List.generate(
              5,
              (index) => const DairyRecordingCard(isSub: true),
            ),
          ),
        ],
      ),
    );
  }
}
