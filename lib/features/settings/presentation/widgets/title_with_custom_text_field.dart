import 'package:flutter/material.dart';

import '../../../../core/constants/app_sizes.dart';
import '../../../../core/shared/widgets/widgets.dart';

class TitleWithCustomTextField extends StatelessWidget {
  const TitleWithCustomTextField({
    super.key,
    required this.title,
    required this.hintText,
    required this.controller,
  });
  final String title;
  final String hintText;
  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);
    return Column(
      crossAxisAlignment: .start,
      children: [
        Text(title, style: theme.bodySmall.copyWith(color: theme.primary)),
        gapH8,
        CustomTextField(
          hint: hintText,
          controller: controller,
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
        ),
      ],
    );
  }
}
