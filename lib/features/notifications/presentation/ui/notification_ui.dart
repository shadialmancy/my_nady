import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../core/constants/app_sizes.dart';
import '../../../../core/theme/app_theme.dart';
import '../provider/notification_provider.dart';
import '../widgets/notification_tile.dart';

class NotificationUi extends ConsumerStatefulWidget {
  const NotificationUi({super.key});

  @override
  ConsumerState<NotificationUi> createState() => _NotificationUiState();
}

class _NotificationUiState extends ConsumerState<NotificationUi> {
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _onScroll() {
    if (_scrollController.position.pixels >=
        _scrollController.position.maxScrollExtent - 200) {
      ref.read(notificationListProvider.notifier).loadMore();
    }
  }

  @override
  Widget build(BuildContext context) {
    final (theme, _) = appSettingsRecord(context);
    final notificationsAsync = ref.watch(notificationListProvider);
    final notifier = ref.read(notificationListProvider.notifier);

    return Scaffold(
      backgroundColor: theme.primaryBackground,
      appBar: AppBar(
        title: Text('Notifications', style: theme.displaySmall),
        backgroundColor: theme.primaryBackground,
        elevation: 0,
        actions: [
          IconButton(
            icon: Icon(Icons.done_all, color: theme.primary),
            onPressed: () => notifier.markAllAsRead(),
            tooltip: 'Mark all as read',
          ),
        ],
      ),
      body: RefreshIndicator(
        onRefresh: () => ref.read(notificationListProvider.notifier).refresh(),
        color: theme.primary,
        child: notificationsAsync.when(
          data: (notifications) {
            if (notifications.isEmpty) {
              return _buildEmptyState(theme);
            }

            return ListView.builder(
              controller: _scrollController,
              itemCount: notifications.length + (notifier.hasMore ? 1 : 0),
              itemBuilder: (context, index) {
                if (index == notifications.length) {
                  return const Padding(
                    padding: EdgeInsets.symmetric(vertical: 32),
                    child: Center(child: CircularProgressIndicator()),
                  );
                }

                final notification = notifications[index];
                return NotificationTile(
                  notification: notification,
                  onTap: () {
                    // Mark as read
                    if (!notification.isRead) {
                      notifier.markAsRead(notification.id);
                    }

                    // Handle navigation
                    if (notification.data != null &&
                        notification.data!.containsKey('route')) {
                      final route = notification.data!['route'] as String;
                      Navigator.pushNamed(
                        context,
                        route,
                        arguments: notification.data,
                      );
                    }
                  },
                );
              },
            );
          },
          loading: () => const Center(child: CircularProgressIndicator()),
          error: (error, _) => Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Error: $error'),
                gapH16,
                ElevatedButton(
                  onPressed: () => ref.invalidate(notificationListProvider),
                  child: const Text('Retry'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildEmptyState(FlutterFlowTheme theme) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.notifications_none, size: 64, color: theme.grey86),
          gapH16,
          Text(
            'No notifications yet',
            style: theme.titleMedium.copyWith(color: theme.grey86),
          ),
          gapH8,
          Text(
            'We will notify you when something important happens.',
            style: theme.bodySmallSecondary,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
