import 'package:flutter/material.dart';

import '../../constants/app_sizes.dart';

class CustomDropDownTextField extends StatelessWidget {
  const CustomDropDownTextField({
    super.key,
    required this.items,
    required this.onChanged,
    this.onTap,
    this.value,
    this.label = '',
    this.labelStyle,
    required this.hint,
    this.validator,
  });
  final List<DropdownMenuItem> items;
  final void Function(dynamic)? onChanged;
  final void Function()? onTap;
  final dynamic value;
  final String hint;
  final String label;
  final TextStyle? labelStyle;
  final String? Function(dynamic)? validator;
  @override
  Widget build(BuildContext context) {
    final (theme, _) = appSettingsRecord(context);
    return DropdownButtonFormField(
      isExpanded: true,
      items: items,
      validator: validator,
      style: theme.bodySmall,
      dropdownColor: theme.white,
      icon: Icon(Icons.keyboard_arrow_down, color: theme.grey8080),
      decoration: InputDecoration(
        filled: true,
        hintText: hint,
        contentPadding: const EdgeInsets.symmetric(vertical: 4, horizontal: 12),
        labelText: label,
        labelStyle:
            labelStyle ??
            theme.bodyMedium.copyWith(
              color: theme.primary,
              fontWeight: .normal,
            ),
        hintStyle: theme.bodySmall.copyWith(color: theme.grey99),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        fillColor: theme.white,
        errorMaxLines: 1,
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: theme.error, style: BorderStyle.solid),
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: theme.primary.withValues(alpha: 0.6),
            width: 1,
          ),
          borderRadius: .circular(16),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: theme.primary.withValues(alpha: 0.6),
            width: 1,
          ),
          borderRadius: .circular(16),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: theme.primary.withValues(alpha: 0.6),
            width: 1,
          ),
          borderRadius: .circular(16),
        ),
        disabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: theme.primary.withValues(alpha: 0.6),
            width: 1,
          ),
          borderRadius: .circular(16),
        ),
      ),
      onChanged: onChanged,
      hint: Text(hint),
      initialValue: null,
    );
  }
}
