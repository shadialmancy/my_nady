import 'package:flutter/material.dart';
import 'package:my_nady_project/core/constants/app_sizes.dart';

class GenderSelector extends StatefulWidget {
  const GenderSelector({
    super.key,
    this.genders,
    this.onSelected,
    this.selectedGender,
  });
  final List<String>? genders;
  final Function(String)? onSelected;
  final String? selectedGender;
  @override
  State<GenderSelector> createState() => _GenderSelectorState();
}

class _GenderSelectorState extends State<GenderSelector> {
  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);
    return Wrap(
      spacing: 12,
      runSpacing: 12,
      children: widget.genders!.map((gender) {
        final isSelected = widget.selectedGender == gender;
        return ChoiceChip(
          label: Text(gender),
          checkmarkColor: theme.white,
          selected: isSelected,
          onSelected: (selected) {
            widget.onSelected?.call(gender);
          },
          labelStyle: theme.bodySmall.copyWith(
            color: isSelected ? theme.white : theme.primaryText,
            fontWeight: FontWeight.w500,
          ),
          backgroundColor: theme.white,
          selectedColor: theme.primary,
          side: BorderSide(
            color: isSelected ? theme.primary : theme.borderGrey,
          ),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        );
      }).toList(),
    );
  }
}
