import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../../core/router/app_router.dart';
import '../widgets/widgets.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import '../../../../core/shared/widgets/widgets.dart';
import '../provider/dairy_record_ui_service.dart';

class DairyRecordUi extends ConsumerWidget {
  const DairyRecordUi({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final dairyRecordsState = ref.watch(dairyRecordUiServiceProvider);
    return AsyncValueWidget(
      value: dairyRecordsState,
      builder: (dairy) {
        final records = dairy?.data ?? [];
        return SingleChildScrollView(
          padding: .symmetric(horizontal: 3.sw),
          child: Column(
            children: records.map((record) {
              final formattedDate = record.date != null
                  ? DateFormat('MMMM dd yyyy').format(record.date!)
                  : "";
              return DairyRecordingCard(
                title: record.title,
                content: record.content,
                subtitle: formattedDate,
                onTap: () {
                  context.router.push(
                    SubDairyRecordRoute(
                      title: record.title,
                      date: formattedDate,
                      diaryId: record.id ?? '',
                    ),
                  );
                },
                onDelete: () {
                  ref
                      .read(dairyRecordUiServiceProvider.notifier)
                      .deleteDairyRecord(record.id!);
                },
              );
            }).toList(),
          ),
        );
      },
    );
  }
}
