import 'package:my_nady_project/features/settings/domain/entities/subscription_current_entity.dart';
import 'package:my_nady_project/features/settings/domain/entities/subscription_history_entity.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../data/repositories_impl/subscription_repository_impl.dart';

part 'subscription_repository.g.dart';

@Riverpod(keepAlive: true)
class SubscriptionRepository extends _$SubscriptionRepository {
  @override
  FutureOr<void> build() {}

  final SubscriptionRepositoryImpl _subscriptionRepositoryImpl =
      SubscriptionRepositoryImpl();

  Future<SubscriptionHistoryEntity?> getSubscriptionHistory() async {
    try {
      return await _subscriptionRepositoryImpl.getSubscriptionHistory();
    } catch (e) {
      rethrow;
    }
  }

  Future<SubscriptionCurrentEntity?> getCurrentSubscriptions() async {
    try {
      return await _subscriptionRepositoryImpl.getCurrentSubscriptions();
    } catch (e) {
      rethrow;
    }
  }
}
