import 'package:flutter/material.dart';

import '../../../../core/constants/app_sizes.dart';
import '../../../../core/shared/widgets/widgets.dart';

/// Returns `true` when the user confirms, `false` or `null` when cancelled.
Future<bool?> showSubscribeConfirmationDialog(
  BuildContext context, {
  String? planTitle,
  String? planPrice,
}) {
  return showDialog<bool>(
    context: context,
    builder: (ctx) {
      final (theme, l10n) = appSettingsRecord(ctx);
      return AlertDialog(
        backgroundColor: theme.whiteColor,
        insetPadding: const EdgeInsets.symmetric(horizontal: 32),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        contentPadding: const EdgeInsets.all(32),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(Icons.card_membership_outlined, size: 56, color: theme.primary),
            gapH16,
            Text(
              l10n.confirmSubscription,
              textAlign: TextAlign.center,
              style: theme.headlineMedium.copyWith(
                color: theme.primary,
                fontWeight: FontWeight.w600,
              ),
            ),
            gapH8,
            Text(
              l10n.confirmSubscriptionMessage,
              textAlign: TextAlign.center,
              style: theme.titleSmall.copyWith(
                color: theme.grey87.withValues(alpha: 0.8),
                fontWeight: FontWeight.w400,
              ),
            ),
            if (planTitle != null) ...[
              gapH12,
              Text(
                planTitle,
                textAlign: TextAlign.center,
                style: theme.titleMedium.copyWith(
                  color: theme.primary,
                  fontWeight: FontWeight.w600,
                ),
              ),
              if (planPrice != null && planPrice.isNotEmpty)
                Text(
                  planPrice,
                  textAlign: TextAlign.center,
                  style: theme.bodySmall.copyWith(color: theme.grey87),
                ),
            ],
            gapH24,
            Row(
              children: [
                Expanded(
                  child: CustomButton(
                    title: l10n.confirm,
                    onPressed: () => Navigator.of(ctx).pop(true),
                    width: double.infinity,
                  ),
                ),
                gapW12,
                Expanded(
                  child: CustomButton(
                    title: l10n.cancel,
                    onPressed: () => Navigator.of(ctx).pop(false),
                    titleStyle: theme.bodyMedium.copyWith(color: theme.primary),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                      side: BorderSide(color: theme.primary),
                    ),
                    width: double.infinity,
                    backgroundColor: theme.white,
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    },
  );
}
