import 'package:flutter/material.dart';

import '../../../../core/constants/app_sizes.dart';

class SectionTitle extends StatelessWidget {
  const SectionTitle({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    final (theme, _) = appSettingsRecord(context);
    return Text(
      title,
      style: theme.titleMedium.copyWith(
        fontWeight: .w600,
        color: theme.primaryText,
      ),
    );
  }
}
