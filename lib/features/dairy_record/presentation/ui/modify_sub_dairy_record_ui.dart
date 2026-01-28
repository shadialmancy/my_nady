import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

import '../../../../core/constants/app_sizes.dart';
import '../../../../core/shared/widgets/widgets.dart';

import 'package:auto_route/auto_route.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import '../provider/dairy_record_ui_service.dart';

class ModifySubDairyRecordUi extends ConsumerStatefulWidget {
  const ModifySubDairyRecordUi({super.key, required this.diaryId});
  final String diaryId;

  @override
  ConsumerState<ModifySubDairyRecordUi> createState() =>
      _ModifySubDairyRecordUiState();
}

class _ModifySubDairyRecordUiState
    extends ConsumerState<ModifySubDairyRecordUi> {
  final TextEditingController titleController = TextEditingController();
  final TextEditingController dateController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();
  final TextEditingController repetitionController = TextEditingController();
  final TextEditingController setController = TextEditingController();
  bool isLoading = false;
  bool showCalendar = false;

  @override
  void initState() {
    super.initState();
    dateController.text = DateFormat('yyyy-MM-dd').format(DateTime.now());
  }

  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);
    return SingleChildScrollView(
      padding: EdgeInsets.only(
        left: 3.sw,
        right: 3.sw,
        top: 4.sh,
        bottom: 8.sh,
      ),
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
                    showCalendar = true;
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
                title: isLoading ? null : l10n.save,
                icon: isLoading
                    ? const SizedBox(
                        height: 20,
                        width: 20,
                        child: CircularProgressIndicator(
                          color: Colors.white,
                          strokeWidth: 2,
                        ),
                      )
                    : null,
                onPressed: isLoading
                    ? null
                    : () async {
                        if (titleController.text.isNotEmpty) {
                          setState(() {
                            isLoading = true;
                          });
                          try {
                            final records = ref.read(
                              dairyRecordUiServiceProvider,
                            );
                            final dairyRecord = records.value?.data
                                ?.firstWhereOrNull(
                                  (d) => d.id == widget.diaryId,
                                );
                            final lastItem = dairyRecord?.items?.lastOrNull;
                            final nextOrder =
                                (((lastItem?.order?.toInt()) ?? 0) + 1)
                                    .toString();

                            final descParts = [
                              if (descriptionController.text.isNotEmpty)
                                descriptionController.text,
                              "Date: ${dateController.text}",
                              if (setController.text.isNotEmpty)
                                "Set: ${setController.text}",
                              if (repetitionController.text.isNotEmpty)
                                "Rep: ${repetitionController.text}",
                            ];

                            final desc = descParts.join("\n");

                            await ref
                                .read(dairyRecordUiServiceProvider.notifier)
                                .addDairyItem(
                                  diaryId: widget.diaryId,
                                  title: titleController.text,
                                  order: nextOrder,
                                  description: desc,
                                );
                            if (mounted) {
                              context.router.maybePop();
                            }
                          } catch (e) {
                            if (mounted) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(content: Text(e.toString())),
                              );
                            }
                          } finally {
                            if (mounted) {
                              setState(() {
                                isLoading = false;
                              });
                            }
                          }
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text(l10n.fieldRequired)),
                          );
                        }
                      },
                width: double.infinity,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
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
                  borderRadius: BorderRadius.circular(16),
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
                          fontWeight: FontWeight.w400,
                          color: theme.primary,
                        ),
                      ),
                      monthViewSettings: const DateRangePickerMonthViewSettings(
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
                            dateController.text = DateFormat(
                              'yyyy-MM-dd',
                            ).format(selectedDate);
                            setState(() {
                              showCalendar = false;
                            });
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
