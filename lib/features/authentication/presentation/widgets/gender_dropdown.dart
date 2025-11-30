import 'package:flutter/material.dart';

import '../../../../core/constants/app_sizes.dart';
import '../../../../core/shared/widgets/widgets.dart';

class GenderDropdown extends StatefulWidget {
  const GenderDropdown({super.key});

  @override
  State<GenderDropdown> createState() => _GenderDropdownState();
}

class _GenderDropdownState extends State<GenderDropdown> {
  List<String> genderList = [];
  String selectedGender = '';
  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);
    genderList = [l10n.male, l10n.female];
    return SizedBox(
      width: double.infinity,
      child: CustomDropDownTextField(
        items: genderList
            .map(
              (gender) => DropdownMenuItem(value: gender, child: Text(gender)),
            )
            .toList(),
        onChanged: (value) {
          setState(() {
            selectedGender = value as String? ?? '';
          });
        },
        label: l10n.gender,
        hint: l10n.selectYourGender,
      ),
    );
  }
}
