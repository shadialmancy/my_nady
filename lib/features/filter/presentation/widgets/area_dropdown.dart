import 'package:flutter/material.dart';

import '../../../../core/constants/app_sizes.dart';

class AreaDropdown extends StatefulWidget {
  const AreaDropdown({
    super.key,
    required this.areas,
    this.selectedArea,
    this.onSelected,
  });
  final List<String> areas;
  final String? selectedArea;
  final Function(String)? onSelected;
  @override
  State<AreaDropdown> createState() => _AreaDropdownState();
}

class _AreaDropdownState extends State<AreaDropdown> {
  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: theme.borderGrey),
        borderRadius: BorderRadius.circular(12),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          value: widget.selectedArea,
          hint: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              'Select area',
              style: theme.bodySmall.copyWith(color: theme.grey99),
            ),
          ),
          isExpanded: true,
          icon: Padding(
            padding: const EdgeInsets.only(right: 16),
            child: Icon(Icons.keyboard_arrow_down, color: theme.grey8080),
          ),
          dropdownColor: theme.white,
          items: widget.areas.map((area) {
            return DropdownMenuItem<String>(
              value: area,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Text(area, style: theme.bodySmall),
              ),
            );
          }).toList(),
          onChanged: (value) {
            widget.onSelected?.call(value ?? '');
          },
        ),
      ),
    );
  }
}
