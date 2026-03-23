import 'package:flutter/material.dart';
import '../../../../core/constants/app_sizes.dart';
import '../../../../core/theme/app_theme.dart';
import '../../domain/entity/notification_entity.dart';
import 'package:intl/intl.dart';
import 'package:cached_network_image/cached_network_image.dart';

class NotificationTile extends StatelessWidget {
  final NotificationEntity notification;
  final VoidCallback onTap;

  const NotificationTile({
    super.key,
    required this.notification,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final (theme, _) = appSettingsRecord(context);

    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(AppSizes.p16),
        decoration: BoxDecoration(
          color: notification.isRead
              ? Colors.transparent
              : theme.primary.withOpacity(0.05),
          border: Border(
            bottom: BorderSide(color: theme.borderGrey, width: 0.5),
          ),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildIcon(theme),
            gapW12,
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                          notification.title,
                          style: theme.titleSmall.copyWith(
                            fontWeight: notification.isRead
                                ? FontWeight.w500
                                : FontWeight.bold,
                            color: theme.primaryText,
                          ),
                        ),
                      ),
                      if (!notification.isRead)
                        Container(
                          width: 8,
                          height: 8,
                          decoration: BoxDecoration(
                            color: theme.secondary,
                            shape: BoxShape.circle,
                          ),
                        ),
                    ],
                  ),
                  if (notification.description != null) ...[
                    gapH4,
                    Text(
                      notification.description!,
                      style: theme.bodySmallSecondary.copyWith(
                        color: theme.secondaryText,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                  gapH8,
                  Text(
                    _formatTime(notification.createdAt),
                    style: theme.labelSmallSecondary.copyWith(
                      color: theme.grey87,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildIcon(FlutterFlowTheme theme) {
    if (notification.icon != null && notification.icon!.startsWith('http')) {
      return Container(
        width: 48,
        height: 48,
        decoration: BoxDecoration(color: theme.greyFA, shape: BoxShape.circle),
        child: ClipOval(
          child: CachedNetworkImage(
            imageUrl: notification.icon!,
            placeholder: (context, url) => Center(
              child: CircularProgressIndicator(
                strokeWidth: 2,
                color: theme.primary,
              ),
            ),
            errorWidget: (context, url, error) => _buildDefaultIcon(theme),
            fit: BoxFit.cover,
          ),
        ),
      );
    }

    return _buildDefaultIcon(theme);
  }

  Widget _buildDefaultIcon(FlutterFlowTheme theme) {
    IconData iconData;
    Color iconColor;

    switch (notification.type) {
      case NotificationType.SUBSCRIPTION:
        iconData = Icons.card_membership;
        iconColor = theme.blue36;
        break;
      case NotificationType.PAYMENT:
        iconData = Icons.payment;
        iconColor = theme.success;
        break;
      case NotificationType.PROMOTION:
        iconData = Icons.local_offer;
        iconColor = theme.secondary;
        break;
      case NotificationType.SYSTEM:
        iconData = Icons.settings_suggest;
        iconColor = theme.grey86;
        break;
      case NotificationType.SUPPORT:
        iconData = Icons.support_agent;
        iconColor = theme.purple6D;
        break;
      case NotificationType.GENERAL:
        iconData = Icons.notifications;
        iconColor = theme.primary;
        break;
    }

    return Container(
      width: 48,
      height: 48,
      decoration: BoxDecoration(
        color: iconColor.withOpacity(0.1),
        shape: BoxShape.circle,
      ),
      child: Icon(iconData, color: iconColor, size: 24),
    );
  }

  String _formatTime(DateTime dateTime) {
    final now = DateTime.now();
    final difference = now.difference(dateTime);

    if (difference.inMinutes < 60) {
      return '${difference.inMinutes}m ago';
    } else if (difference.inHours < 24) {
      return '${difference.inHours}h ago';
    } else if (difference.inDays < 7) {
      return '${difference.inDays}d ago';
    } else {
      return DateFormat('MMM dd, yyyy').format(dateTime);
    }
  }
}
