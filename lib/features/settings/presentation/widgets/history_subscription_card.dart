import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../../core/constants/app_sizes.dart';
import '../../data/models/subscription_history_dto/datum.dart';

class HistorySubscriptionCard extends StatelessWidget {
  final Datum historyItem;

  const HistorySubscriptionCard({super.key, required this.historyItem});

  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);

    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: theme.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: theme.grey9C.withValues(alpha: 0.3)),
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
                  historyItem.branchName ?? 'Branch Name',
                  style: theme.titleMedium.copyWith(
                    color: theme.primaryText,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 6,
                ),
                decoration: BoxDecoration(
                  color: _getStatusColor(historyItem.currentStatus, theme),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  historyItem.currentStatus?.toUpperCase() ?? 'UNKNOWN',
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
            historyItem.planName ?? 'Plan Name',
            style: theme.bodyMedium.copyWith(
              color: theme.primaryText,
              fontWeight: FontWeight.w600,
            ),
          ),
          gapH12,
          if (historyItem.history != null && historyItem.history!.isNotEmpty)
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Recent Changes:',
                  style: theme.bodySmall.copyWith(
                    color: theme.grey9C,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                gapH8,
                ...historyItem.history!.take(3).map((change) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 8),
                    child: Row(
                      children: [
                        Icon(
                          _getChangeIcon(change.changeType),
                          size: 16,
                          color: theme.primary,
                        ),
                        gapW8,
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                change.changeType ?? 'Change',
                                style: theme.bodySmall.copyWith(
                                  color: theme.primaryText,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              if (change.notes != null)
                                Text(
                                  change.notes!,
                                  style: theme.bodySmall.copyWith(
                                    color: theme.grey9C,
                                    fontSize: 11,
                                  ),
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                ),
                            ],
                          ),
                        ),
                        Text(
                          _formatDate(change.changeDate),
                          style: theme.bodySmall.copyWith(
                            color: theme.grey9C,
                            fontSize: 11,
                          ),
                        ),
                      ],
                    ),
                  );
                }),
              ],
            ),
        ],
      ),
    );
  }

  String _formatDate(DateTime? date) {
    if (date == null) return 'N/A';
    return DateFormat('MMM dd').format(date);
  }

  Color _getStatusColor(String? status, dynamic theme) {
    switch (status?.toLowerCase()) {
      case 'active':
        return Colors.green;
      case 'expired':
        return Colors.red;
      case 'cancelled':
        return Colors.orange;
      case 'completed':
        return Colors.blue;
      default:
        return theme.grey9C;
    }
  }

  IconData _getChangeIcon(String? changeType) {
    switch (changeType?.toLowerCase()) {
      case 'renewal':
        return Icons.autorenew;
      case 'cancellation':
        return Icons.cancel;
      case 'activation':
        return Icons.check_circle;
      case 'expiration':
        return Icons.event_busy;
      default:
        return Icons.info;
    }
  }
}
