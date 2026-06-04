import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../../core/providers/gym_view_layout_provider.dart';
import '../../../settings/data/models/subscription_current_dto/datum.dart'
    as current;
import '../../../settings/data/models/subscription_history_dto/datum.dart'
    as history;
import '../../../settings/presentation/widgets/widgets.dart';

class CurrentSubscriptionCollectionView extends ConsumerWidget {
  const CurrentSubscriptionCollectionView({
    super.key,
    required this.subscriptions,
  });

  final List<current.Datum> subscriptions;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final layout = ref.watch(gymViewLayoutProvider);
    final padding = EdgeInsets.only(
      top: 20,
      bottom: 40,
      left: 3.5.sw,
      right: 3.5.sw,
    );

    if (layout == GymLayoutMode.grid) {
      return GridView.builder(
        padding: padding,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.72,
          crossAxisSpacing: 12,
          mainAxisSpacing: 12,
        ),
        itemCount: subscriptions.length,
        itemBuilder: (context, index) {
          return CurrentSubscriptionCard(
            subscription: subscriptions[index],
            compact: true,
          );
        },
      );
    }

    return ListView.builder(
      padding: padding,
      itemCount: subscriptions.length,
      itemBuilder: (context, index) {
        return CurrentSubscriptionCard(subscription: subscriptions[index]);
      },
    );
  }
}

class HistorySubscriptionCollectionView extends ConsumerWidget {
  const HistorySubscriptionCollectionView({
    super.key,
    required this.historyItems,
  });

  final List<history.Datum> historyItems;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final layout = ref.watch(gymViewLayoutProvider);
    final padding = EdgeInsets.only(
      top: 20,
      bottom: 40,
      left: 3.5.sw,
      right: 3.5.sw,
    );

    if (layout == GymLayoutMode.grid) {
      return GridView.builder(
        padding: padding,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.78,
          crossAxisSpacing: 12,
          mainAxisSpacing: 12,
        ),
        itemCount: historyItems.length,
        itemBuilder: (context, index) {
          return HistorySubscriptionCard(
            historyItem: historyItems[index],
            compact: true,
          );
        },
      );
    }

    return ListView.builder(
      padding: padding,
      itemCount: historyItems.length,
      itemBuilder: (context, index) {
        return HistorySubscriptionCard(historyItem: historyItems[index]);
      },
    );
  }
}
