import '../../domain/entities/club_entity.dart';
import '../../domain/entities/gym_detail_entity.dart';
import '../../domain/entities/review_entity.dart';
import '../datasource/club_datasource.dart';
import '../models/club_dto/club_dto.dart';
import '../models/club_filter_request.dart';
import '../models/branch_meta_item.dart';

import 'package:my_nady_project/features/club/data/models/gym_detail_dto/gym_detail_dto.dart';

abstract class BaseClubRepository {
  Future<ClubEntity> getBranches({ClubFilterRequest? request});
  Future<ClubEntity> getMyFavorites();
  Future<GymDetailEntity> getGymDetails(String id);
  Future<void> purchaseSubscription(String subscriptionPlanId);
  Future<void> toggleFavorite(String branchId);
  Future<List<BranchMetaItem>> getBranchTypes();
  Future<List<BranchMetaItem>> getBranchAmenities();
  Future<ReviewEntity> getReviews(String branchId);
}

class ClubRepositoryImpl implements BaseClubRepository {
  final ClubDataSourceImpl dataSource = ClubDataSourceImpl();

  @override
  Future<ClubEntity> getBranches({ClubFilterRequest? request}) async {
    try {
      return await dataSource.getBranches(request).then((value) {
        return value.toEntity();
      });
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<ClubEntity> getMyFavorites() async {
    try {
      return await dataSource.getMyFavorites().then(
        (value) => value.toEntity(),
      );
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<GymDetailEntity> getGymDetails(String id) async {
    try {
      return await dataSource.getGymDetails(id).then((value) {
        return value.toEntity();
      });
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<void> purchaseSubscription(String subscriptionPlanId) async {
    try {
      await dataSource.purchaseSubscription(subscriptionPlanId);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<void> toggleFavorite(String branchId) async {
    try {
      await dataSource.toggleFavorite(branchId);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<List<BranchMetaItem>> getBranchTypes() async {
    try {
      return await dataSource.getBranchTypes();
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<List<BranchMetaItem>> getBranchAmenities() async {
    try {
      return await dataSource.getBranchAmenities();
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<ReviewEntity> getReviews(String branchId) async {
    try {
      return await dataSource.getReviews(branchId).then((value) {
        return ReviewEntity(data: value.data, meta: value.meta);
      });
    } catch (e) {
      rethrow;
    }
  }
}
