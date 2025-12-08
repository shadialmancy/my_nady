import 'package:flutter/material.dart';

import '../../../../core/constants/app_sizes.dart';

class OfferCheckbox extends StatefulWidget {
  const OfferCheckbox({
    super.key,
    required this.includesOffer,
    this.onSelected,
  });
  final bool includesOffer;
  final Function(bool)? onSelected;

  @override
  State<OfferCheckbox> createState() => _OfferCheckboxState();
}

class _OfferCheckboxState extends State<OfferCheckbox> {
  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: theme.borderGrey),
        borderRadius: BorderRadius.circular(12),
      ),
      child: CheckboxListTile(
        title: Text(
          'Includes Offer',
          style: theme.bodyMedium.copyWith(
            fontWeight: FontWeight.w500,
            color: theme.primaryText,
          ),
        ),
        value: widget.includesOffer,
        onChanged: (value) {
          widget.onSelected?.call(value ?? false);
        },
        activeColor: theme.primary,
        checkColor: theme.white,
        controlAffinity: ListTileControlAffinity.leading,
        contentPadding: const EdgeInsets.symmetric(horizontal: 12),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
    );
  }
}
