import 'package:my_nady_project/features/settings/domain/entities/subscription_current_entity.dart';
import 'package:my_nady_project/features/settings/domain/entities/subscription_history_entity.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../settings/domain/repositories/subscription_repository.dart';

part 'subscription_ui_service.g.dart';

@Riverpod(keepAlive: true)
class SubscriptionUiService extends _$SubscriptionUiService {
  @override
  FutureOr<void> build() {}

  SubscriptionHistoryEntity? subscriptionHistory;
  SubscriptionCurrentEntity? currentSubscriptions;

  Future<SubscriptionHistoryEntity?> fetchSubscriptionHistory() async {
    try {
      state = const AsyncLoading();
      final repository = ref.read(subscriptionRepositoryProvider.notifier);
      subscriptionHistory = await repository.getSubscriptionHistory();
      state = AsyncValue.data(null);
      return subscriptionHistory;
    } catch (e) {
      rethrow;
    }
  }

  Future<SubscriptionCurrentEntity?> fetchCurrentSubscriptions() async {
    try {
      state = const AsyncLoading();
      final repository = ref.read(subscriptionRepositoryProvider.notifier);
      currentSubscriptions = await repository.getCurrentSubscriptions();
      state = AsyncValue.data(null);
      return currentSubscriptions;
    } catch (e) {
      rethrow;
    }
  }
}

// // Separate providers for watching data
// @riverpod
// Future<SubscriptionHistoryDto> subscriptionHistory(
//   SubscriptionHistoryRef ref,
// ) async {
//   final service = ref.read(subscriptionUiServiceProvider.notifier);
//   return await service.fetchSubscriptionHistory();
// }

// @riverpod
// Future<SubscriptionCurrentDto> currentSubscriptions(
//   CurrentSubscriptionsRef ref,
// ) async {
//   final service = ref.read(subscriptionUiServiceProvider.notifier);
//   return await service.fetchCurrentSubscriptions();
// }
