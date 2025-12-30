import 'package:flutter/material.dart';
import 'package:phone_text_field/phone_text_field.dart';

import '../../constants/app_sizes.dart';

class CustomPhoneNumberTextField extends StatelessWidget {
  const CustomPhoneNumberTextField({
    super.key,
    this.label,
    this.hint,
    this.hintStyle,
    this.labelStyle,
    this.controller,
    this.validator,
  });
  final String? label;
  final String? hint;
  final TextEditingController? controller;
  final TextStyle? hintStyle;
  final TextStyle? labelStyle;
  final String? Function(PhoneNumber?)? validator;

  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);

    return FormField<PhoneNumber>(
      validator: validator,
      builder: (FormFieldState<PhoneNumber> state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            PhoneTextField(
              showCountryCodeAsIcon: false,
              initialCountryCode: "+20",
              controller: controller,
              onChanged: (value) {
                state.didChange(value);
              },
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.symmetric(
                  vertical: 4,
                  horizontal: 12,
                ),
                labelText: l10n.phone,
                labelStyle:
                    labelStyle ??
                    theme.bodyMedium.copyWith(
                      color: theme.primary,
                      fontWeight: .normal,
                    ),
                hintStyle:
                    hintStyle ?? theme.bodySmall.copyWith(color: theme.grey99),
                hintText: '1234567890',
                prefixStyle: theme.bodyMedium.copyWith(
                  color: theme.primary,
                  fontWeight: .normal,
                ),
                floatingLabelBehavior: FloatingLabelBehavior.always,
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
                errorText: state.errorText,
              ),
            ),
          ],
        );
      },
    );
  }
}
