import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';
import 'package:my_nady_project/core/constants/app_sizes.dart';
import 'package:my_nady_project/core/helpers/assets_helper.dart';
import 'package:my_nady_project/core/shared/widgets/widgets.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

import '../../../authentication/presentation/provider/auth_ui_service.dart';
import '../widgets/widget.dart';

class EditProfileUi extends ConsumerStatefulWidget {
  const EditProfileUi({super.key});

  @override
  ConsumerState<EditProfileUi> createState() => _EditProfileUiState();
}

class _EditProfileUiState extends ConsumerState<EditProfileUi> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController birthDateController = TextEditingController();
  String? selectedGender = 'Male';
  bool showCalendar = false;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final user = ref.read(authUiServiceProvider).value;
      if (user != null) {
        nameController.text = user.name ?? '';
        if (user.birthDate != null) {
          final date = DateTime.tryParse(user.birthDate.toString());
          if (date != null) {
            birthDateController.text = DateFormat('yyyy-MM-dd').format(date);
          }
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);
    final authState = ref.watch(authUiServiceProvider);
    return SingleChildScrollView(
      child: Stack(
        children: [
          Column(
            children: [
              const ProfileAppbar(isEditable: true),
              gapH16,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SvgPicture.asset(AssetsHelper.editProfileIcon),
                  gapW8,
                  Text(
                    l10n.editProfile,
                    style: theme.headlineSmall.copyWith(color: theme.primary),
                  ),
                ],
              ),
              gapH16,
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 3.sw),
                child: Column(
                  children: [
                    CustomTextField(
                      label: l10n.name,
                      controller: nameController,
                    ),
                    gapH16,
                    // CustomDropDownTextField(
                    //   label: l10n.gender,
                    //   hint: l10n.selectYourGender,
                    //   items: const ["Male", "Female"]
                    //       .map(
                    //         (e) => DropdownMenuItem(value: e, child: Text(e)),
                    //       )
                    //       .toList(),
                    //   value: selectedGender,
                    //   onChanged: (value) {
                    //     setState(() {
                    //       selectedGender = value;
                    //     });
                    //   },
                    // ),
                    // gapH16,
                    CustomTextField(
                      label: l10n.date,
                      controller: birthDateController,
                      readOnly: true,
                      onTap: () {
                        setState(() {
                          showCalendar = true;
                        });
                      },
                    ),
                    gapH48,
                    CustomButton(
                      title: authState.isLoading ? null : l10n.confirm,
                      icon: authState.isLoading
                          ? const SizedBox(
                              height: 20,
                              width: 20,
                              child: CircularProgressIndicator(
                                color: Colors.white,
                                strokeWidth: 2,
                              ),
                            )
                          : null,
                      onPressed: authState.isLoading
                          ? null
                          : () async {
                              if (nameController.text.isNotEmpty &&
                                  selectedGender != null &&
                                  birthDateController.text.isNotEmpty) {
                                try {
                                  await ref
                                      .read(authUiServiceProvider.notifier)
                                      .updateProfile(
                                        name: nameController.text,
                                        gender:
                                            selectedGender?.toUpperCase() ?? "",
                                        birthDate:
                                            "${birthDateController.text}T00:00:00.000Z",
                                      );
                                  if (context.mounted) {
                                    context.router.maybePop();
                                  }
                                } catch (e) {
                                  // Error handled by AuthUiService (Toast)
                                }
                              } else {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(content: Text(l10n.fieldRequired)),
                                );
                              }
                            },
                      backgroundColor: theme.primary,
                      titleStyle: theme.bodyMedium.copyWith(
                        color: theme.white,
                        fontWeight: FontWeight.w600,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      width: double.infinity,
                    ),
                    gapH32,
                  ],
                ),
              ),
            ],
          ),
          if (showCalendar)
            Positioned(
              top: 300,
              left: 3.sw,
              right: 3.sw,
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
                  child: Container(
                    color: Colors.white,
                    height: 300,
                    child: SfDateRangePicker(
                      view: DateRangePickerView.month,
                      selectionMode: DateRangePickerSelectionMode.single,
                      onSelectionChanged: (args) {
                        if (args.value is DateTime) {
                          setState(() {
                            birthDateController.text = DateFormat(
                              'yyyy-MM-dd',
                            ).format(args.value);
                            showCalendar = false;
                          });
                        }
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
