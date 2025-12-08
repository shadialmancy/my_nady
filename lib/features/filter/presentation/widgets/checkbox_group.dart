import 'package:flutter/material.dart';

import '../../../../core/constants/app_sizes.dart';

class CheckboxGroup extends StatefulWidget {
  const CheckboxGroup({
    super.key,
    required this.items,
    required this.selectedItems,
    required this.onChanged,
  });

  final List<String> items;
  final Set<String> selectedItems;
  final Function(String, bool) onChanged;

  @override
  State<CheckboxGroup> createState() => _CheckboxGroupState();
}

class _CheckboxGroupState extends State<CheckboxGroup> {
  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);
    return Wrap(
      spacing: 8,
      runSpacing: 8,
      children: widget.items.map((item) {
        final isSelected = widget.selectedItems.contains(item);
        return FilterChip(
          label: Text(item),
          selected: isSelected,
          onSelected: (selected) => widget.onChanged(item, selected),
          labelStyle: theme.bodySmall.copyWith(
            color: isSelected ? theme.white : theme.primaryText,
            fontWeight: FontWeight.w500,
          ),
          backgroundColor: theme.white,
          selectedColor: theme.primary,
          checkmarkColor: theme.white,
          side: BorderSide(
            color: isSelected ? theme.primary : theme.borderGrey,
          ),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        );
      }).toList(),
    );
  }
}
