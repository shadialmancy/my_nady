import 'package:flutter/material.dart';
import 'package:my_nady_project/core/shared/widgets/custom_text_field.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../../core/constants/app_sizes.dart';

class ModifyDairyRecordUi extends StatefulWidget {
  const ModifyDairyRecordUi({super.key});

  @override
  State<ModifyDairyRecordUi> createState() => _ModifyDairyRecordUiState();
}

class _ModifyDairyRecordUiState extends State<ModifyDairyRecordUi> {
  final TextEditingController titleController = TextEditingController();
  final TextEditingController dateController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();
  final TextEditingController repetitionController = TextEditingController();
  final TextEditingController setController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);
    return SingleChildScrollView(
      padding: .symmetric(horizontal: 3.sw, vertical: 4.sh),
      child: Column(
        children: [
          CustomTextField(
            label: l10n.title,
            controller: titleController,
            hint: l10n.setAnTitle,
          ),
          gapH24,
          CustomTextField(
            label: l10n.date,
            controller: dateController,
            readOnly: true,
            onTap: () async {
              final result = await showDateRangePicker(
                context: context,

                initialDateRange: DateTimeRange(
                  start: DateTime.now(),
                  end: DateTime.now().add(const Duration(days: 7)),
                ),
                firstDate: DateTime(2000),
                lastDate: DateTime(2100),
              );
              if (result != null) {
                dateController.text = result.toString();
              }
            },
          ),
        ],
      ),
    );
  }
}
