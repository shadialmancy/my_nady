import 'package:my_nady_project/features/club/domain/entities/gym_detail_entity.dart';
import 'package:my_nady_project/features/club/domain/entities/review_entity.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../data/models/club_filter_request.dart';
import '../../data/models/branch_meta_item.dart';
import '../../data/repositories_impl/club_repository_impl.dart';
import '../entities/club_entity.dart';

part 'club_repository.g.dart';

@Riverpod(keepAlive: true)
class ClubRepository extends _$ClubRepository {
  @override
  FutureOr<void> build() {}

  final ClubRepositoryImpl _clubRepositoryImpl = ClubRepositoryImpl();

  Future<ClubEntity?> getMyFavorites() async {
    try {
      return await _clubRepositoryImpl.getMyFavorites();
    } catch (e) {
      rethrow;
    }
  }

  Future<ClubEntity?> getBranches({ClubFilterRequest? request}) async {
    try {
      final clubEntity = await _clubRepositoryImpl.getBranches(
        request: request,
      );
      return clubEntity;
    } catch (e) {
      rethrow;
    }
  }

  Future<GymDetailEntity> getGymDetails(String id) async {
    try {
      final gymDetail = await _clubRepositoryImpl.getGymDetails(id);
      return gymDetail;
    } catch (e) {
      rethrow;
    }
  }

  Future<void> purchaseSubscription(String subscriptionPlanId) async {
    try {
      await _clubRepositoryImpl.purchaseSubscription(subscriptionPlanId);
    } catch (e) {
      rethrow;
    }
  }

  Future<void> toggleFavorite(String branchId) async {
    try {
      await _clubRepositoryImpl.toggleFavorite(branchId);
    } catch (e) {
      rethrow;
    }
  }

  Future<List<BranchMetaItem>> getBranchTypes() async {
    try {
      return await _clubRepositoryImpl.getBranchTypes();
    } catch (e) {
      rethrow;
    }
  }

  Future<List<BranchMetaItem>> getBranchAmenities() async {
    try {
      return await _clubRepositoryImpl.getBranchAmenities();
    } catch (e) {
      rethrow;
    }
  }

  Future<ReviewEntity> getReviews(String branchId) async {
    try {
      return await _clubRepositoryImpl.getReviews(branchId);
    } catch (e) {
      rethrow;
    }
  }
}
