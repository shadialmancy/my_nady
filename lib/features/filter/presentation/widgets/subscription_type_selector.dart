import 'package:flutter/material.dart';

import '../../../../core/constants/app_sizes.dart';

class SubscriptionTypeSelector extends StatefulWidget {
  const SubscriptionTypeSelector({
    super.key,
    required this.subscriptionTypes,
    this.onSelected,
    this.selectedSubscriptionType,
  });
  final List<String> subscriptionTypes;
  final Function(String)? onSelected;
  final String? selectedSubscriptionType;
  @override
  State<SubscriptionTypeSelector> createState() =>
      _SubscriptionTypeSelectorState();
}

class _SubscriptionTypeSelectorState extends State<SubscriptionTypeSelector> {
  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);
    return Wrap(
      spacing: 8,
      runSpacing: 8,
      children: widget.subscriptionTypes.map((type) {
        final isSelected = widget.selectedSubscriptionType == type;
        return ChoiceChip(
          label: Text(type),
          selected: isSelected,
          checkmarkColor: theme.white,
          onSelected: (selected) {
            widget.onSelected?.call(type);
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
