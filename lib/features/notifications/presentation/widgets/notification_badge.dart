import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_nady_project/core/constants/app_sizes.dart';
import '../../../../core/theme/app_theme.dart';
import '../provider/notification_provider.dart';

class NotificationBadge extends ConsumerWidget {
  final VoidCallback onTap;
  final Color? color;

  const NotificationBadge({super.key, required this.onTap, this.color});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final (theme, _) = appSettingsRecord(context);
    final unreadCountAsync = ref.watch(unreadCountProvider);

    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(20),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Icon(
              Icons.notifications_outlined,
              color: color ?? theme.primary,
              size: 28,
            ),
            unreadCountAsync.when(
              data: (count) {
                if (count == 0) return const SizedBox.shrink();

                return Positioned(
                  top: 0,
                  right: 0,
                  child: Container(
                    padding: const EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      color: theme.secondary,
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: theme.primaryBackground,
                        width: 2,
                      ),
                    ),
                    constraints: const BoxConstraints(
                      minWidth: 18,
                      minHeight: 18,
                    ),
                    child: Text(
                      count > 99 ? '99+' : count.toString(),
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                );
              },
              loading: () => const SizedBox.shrink(),
              error: (_, __) => const SizedBox.shrink(),
            ),
          ],
        ),
      ),
    );
  }
}
