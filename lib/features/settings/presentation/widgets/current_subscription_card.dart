import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../../core/constants/app_sizes.dart';
import '../../../../core/router/app_router.dart';
import '../../data/models/subscription_current_dto/datum.dart';

class CurrentSubscriptionCard extends StatelessWidget {
  final Datum subscription;
  final bool compact;

  const CurrentSubscriptionCard({
    super.key,
    required this.subscription,
    this.compact = false,
  });

  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);

    return GestureDetector(
      onTap: () {
        if (subscription.branchId != null) {
          context.router.push(
            ClubRoute(
              id: subscription.branchId!,
              distance: '',
              showSubscriptionAction: false,
            ),
          );
        }
      },
      child: Container(
        margin: EdgeInsets.only(bottom: compact ? 0 : 16),
        padding: EdgeInsets.all(compact ? 12 : 16),
        decoration: BoxDecoration(
          color: theme.white,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: theme.primary.withValues(alpha: 0.3)),
          boxShadow: [
            BoxShadow(
              color: theme.grey9C.withValues(alpha: 0.1),
              blurRadius: 8,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    subscription.branch?.name ?? l10n.branchNamePlaceHolder,
                    style: theme.titleMedium.copyWith(
                      color: theme.primary,
                      fontWeight: FontWeight.bold,
                      fontSize: compact ? 13 : 16,
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 6,
                  ),
                  decoration: BoxDecoration(
                    color: _getStatusColor(subscription.status, theme),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    subscription.status?.toUpperCase() ?? l10n.unknown,
                    style: theme.bodySmall.copyWith(
                      color: theme.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 12,
                    ),
                  ),
                ),
              ],
            ),
            gapH12,
            Text(
              subscription.subscriptionPlan?.name ?? l10n.planNamePlaceHolder,
              style: theme.bodyMedium.copyWith(
                color: theme.primaryText,
                fontWeight: FontWeight.w600,
              ),
            ),
            if (!compact) ...[
              gapH8,
              Row(
                children: [
                  Icon(Icons.calendar_today, size: 16, color: theme.grey9C),
                  gapW8,
                  Text(
                    '${l10n.start}: ${_formatDate(subscription.startDate, l10n)}',
                    style: theme.bodySmall.copyWith(color: theme.grey9C),
                  ),
                ],
              ),
              gapH4,
              Row(
                children: [
                  Icon(Icons.event, size: 16, color: theme.grey9C),
                  gapW8,
                  Text(
                    '${l10n.end}: ${_formatDate(subscription.endDate, l10n)}',
                    style: theme.bodySmall.copyWith(color: theme.grey9C),
                  ),
                ],
              ),
            ] else ...[
              gapH4,
              Text(
                '${l10n.end}: ${_formatDate(subscription.endDate, l10n)}',
                style: theme.bodySmall.copyWith(
                  color: theme.grey9C,
                  fontSize: 11,
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ],
            gapH8,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '${subscription.subscriptionPlan?.price ?? 0} KWD',
                  style: theme.titleMedium.copyWith(
                    color: theme.primary,
                    fontWeight: FontWeight.bold,
                    fontSize: compact ? 14 : 18,
                  ),
                ),
                // if (subscription.autoRenew == true)
                //   Row(
                //     children: [
                //       Icon(Icons.autorenew, size: 16, color: theme.primary),
                //       gapW4,
                //       Text(
                //         l10n.autoRenew,
                //         style: theme.bodySmall.copyWith(
                //           color: theme.primary,
                //           fontWeight: FontWeight.w600,
                //         ),
                //       ),
                //     ],
                //   ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  String _formatDate(DateTime? date, dynamic l10n) {
    if (date == null) return l10n.na;
    return DateFormat('MMM dd, yyyy').format(date);
  }

  Color _getStatusColor(String? status, dynamic theme) {
    switch (status?.toLowerCase()) {
      case 'active':
        return Colors.green;
      case 'expired':
        return Colors.red;
      case 'cancelled':
        return Colors.orange;
      default:
        return theme.grey9C;
    }
  }
}
