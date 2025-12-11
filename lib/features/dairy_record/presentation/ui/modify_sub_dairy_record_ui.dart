import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

import '../../../../core/constants/app_sizes.dart';
import '../../../../core/shared/widgets/widgets.dart';

class ModifySubDairyRecordUi extends StatefulWidget {
  const ModifySubDairyRecordUi({super.key});

  @override
  State<ModifySubDairyRecordUi> createState() => _ModifySubDairyRecordUiState();
}

class _ModifySubDairyRecordUiState extends State<ModifySubDairyRecordUi> {
  final TextEditingController titleController = TextEditingController();
  final TextEditingController dateController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();
  final TextEditingController repetitionController = TextEditingController();
  final TextEditingController setController = TextEditingController();
  bool showCalendar = false;
  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);
    return SingleChildScrollView(
      padding: .only(left: 3.sw, right: 3.sw, top: 4.sh, bottom: 8.sh),
      child: Stack(
        children: [
          Column(
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
                onTap: () {
                  setState(() {
                    showCalendar = true; // or manage an OverlayEntry
                  });
                },
              ),
              gapH24,
              Row(
                children: [
                  Expanded(
                    child: CustomTextField(
                      label: l10n.set,
                      controller: setController,
                      hint: l10n.set,
                      keyboardType: TextInputType.number,
                    ),
                  ),
                  gapW24,
                  Expanded(
                    child: CustomTextField(
                      label: "${l10n.repetition} (Rep)",
                      controller: repetitionController,
                      hint: l10n.repetition,
                      keyboardType: TextInputType.number,
                    ),
                  ),
                ],
              ),
              gapH24,
              CustomTextField(
                label: l10n.description,
                controller: descriptionController,
                hint: l10n.description,
                maxLines: 5,
                keyboardType: TextInputType.multiline,
              ),
              gapH24,
              CustomButton(
                title: l10n.save,
                onPressed: () {},
                width: .infinity,
                shape: RoundedRectangleBorder(borderRadius: .circular(16)),
              ),
            ],
          ),
          if (showCalendar)
            Positioned(
              // Position the calendar widget right beneath the TextField
              top: 120, // Adjust based on TextField height
              left: 3.sw,
              child: TapRegion(
                onTapOutside: (event) {
                  setState(() {
                    showCalendar = false;
                  });
                },
                child: Material(
                  elevation: 4,
                  borderRadius: .circular(16),
                  clipBehavior: Clip.antiAlias,
                  child: SizedBox(
                    width: 280,
                    height: 280,
                    child: SfDateRangePicker(
                      view: DateRangePickerView.month,
                      backgroundColor: theme.white,
                      selectionColor: theme.blue36,
                      todayHighlightColor: theme.blue36,
                      headerStyle: DateRangePickerHeaderStyle(
                        backgroundColor: Colors.white,
                        textStyle: theme.bodyMedium.copyWith(
                          fontWeight: .w400,
                          color: theme.primary,
                        ),
                      ),
                      monthViewSettings: DateRangePickerMonthViewSettings(
                        dayFormat: 'EEE',
                      ),
                      minDate: DateTime.now(),
                      maxDate: DateTime.now().add(const Duration(days: 365)),
                      selectionMode: DateRangePickerSelectionMode.single,
                      initialSelectedDate: DateTime.now(),
                      onSelectionChanged:
                          (DateRangePickerSelectionChangedArgs args) {
                            final DateTime selectedDate =
                                args.value as DateTime;
                            dateController.text =
                                '${selectedDate.year}-${selectedDate.month}-${selectedDate.day}';
                          },
                    ),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
