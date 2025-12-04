import 'package:flutter/material.dart';

import '../../../../core/constants/app_sizes.dart';

class PaymentDetailsCard extends StatelessWidget {
  const PaymentDetailsCard({
    super.key,
    required this.title,
    required this.value,
  });

  final String title;
  final String value;

  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);

    return DecoratedBox(
      decoration: BoxDecoration(
        borderRadius: .circular(4),
        border: Border.all(color: theme.white.withValues(alpha: 0.15)),
      ),
      child: Padding(
        padding: const .all(12),
        child: Column(
          crossAxisAlignment: .start,
          children: [
            Text(
              title,
              style: theme.labelSmall.copyWith(
                fontSize: 12,
                color: theme.white.withValues(alpha: 0.7),
                fontWeight: .w400,
              ),
            ),
            Text(
              value,
              style: theme.labelMedium.copyWith(
                fontSize: 14,
                color: theme.white,
                fontWeight: .w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
