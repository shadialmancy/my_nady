import 'package:my_nady_project/features/settings/data/models/subscription_history_dto/subscription_history_dto.dart';
import 'package:my_nady_project/features/settings/data/models/subscription_current_dto/subscription_current_dto.dart';
import 'package:my_nady_project/features/settings/domain/entities/subscription_current_entity.dart';
import 'package:my_nady_project/features/settings/domain/entities/subscription_history_entity.dart';

import '../datasource/subscription_datasource.dart';

abstract class BaseSubscriptionRepository {
  Future<SubscriptionHistoryEntity?> getSubscriptionHistory();
  Future<SubscriptionCurrentEntity?> getCurrentSubscriptions();
}

class SubscriptionRepositoryImpl implements BaseSubscriptionRepository {
  final SubscriptionSourceImpl dataSource = SubscriptionSourceImpl();

  @override
  Future<SubscriptionHistoryEntity?> getSubscriptionHistory() async {
    try {
      return await dataSource.getSubscriptionHistory().then((value) {
        return value.toEntity();
      });
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<SubscriptionCurrentEntity?> getCurrentSubscriptions() async {
    try {
      return await dataSource.getCurrentSubscriptions().then((value) {
        return value.toEntity();
      });
    } catch (e) {
      rethrow;
    }
  }
}
