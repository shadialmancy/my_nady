import 'package:flutter/material.dart';

import '../../../../core/constants/app_sizes.dart';
import '../../../../core/shared/widgets/widgets.dart';

class ExpiryDateTextField extends StatefulWidget {
  const ExpiryDateTextField({super.key});

  @override
  State<ExpiryDateTextField> createState() => _ExpiryDateTextFieldState();
}

class _ExpiryDateTextFieldState extends State<ExpiryDateTextField> {
  String? selectedMonth;
  String? selectedYear;
  int currentYear = DateTime.now().year;
  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);

    return Column(
      crossAxisAlignment: .start,
      children: [
        Text(
          l10n.expiryDate,
          style: theme.bodySmall.copyWith(color: theme.primary),
        ),
        gapH8,
        Row(
          children: [
            Expanded(
              child: CustomDropDownTextField(
                hint: l10n.month,
                value: selectedMonth,
                onChanged: (value) {
                  setState(() {
                    selectedMonth = value;
                  });
                },
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(4),
                  borderSide: BorderSide(color: theme.greyD5),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(4),
                  borderSide: BorderSide(color: theme.greyD5),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(4),
                  borderSide: BorderSide(color: theme.greyD5),
                ),
                items: List.generate(
                  12,
                  (index) => DropdownMenuItem<String>(
                    value: (index + 1).toString(),
                    child: Text((index + 1).toString()),
                  ),
                ),
              ),
            ),
            gapW12,
            Expanded(
              child: CustomDropDownTextField(
                hint: l10n.year,
                value: selectedYear,
                onChanged: (value) {
                  setState(() {
                    selectedYear = value;
                  });
                },
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(4),
                  borderSide: BorderSide(color: theme.greyD5),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(4),
                  borderSide: BorderSide(color: theme.greyD5),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(4),
                  borderSide: BorderSide(color: theme.greyD5),
                ),
                items: List.generate(
                  50,
                  (index) => DropdownMenuItem<String>(
                    value: (currentYear + (index)).toString(),
                    child: Text((currentYear + (index)).toString()),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
