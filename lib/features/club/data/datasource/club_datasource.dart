import 'package:my_nady_project/core/constants/app_constants.dart';
import 'package:my_nady_project/features/club/data/models/club_dto/club_dto.dart';
import 'package:my_nady_project/features/authentication/data/models/error_model/error_model.dart';
import '../models/club_filter_request.dart';
import '../models/branch_meta_item.dart';
import '../../../../core/api/apis.dart';

import 'package:my_nady_project/features/club/data/models/gym_detail_dto/gym_detail_dto.dart';
import '../models/review_dto/review_dto.dart';

abstract class ClubDataSource {
  Future<ClubDto> getBranches(ClubFilterRequest? request);
  Future<ClubDto> getMyFavorites();
  Future<GymDetailDto> getGymDetails(String id);
  Future<void> purchaseSubscription(String subscriptionPlanId);
  Future<void> toggleFavorite(String branchId);
  Future<List<BranchMetaItem>> getBranchTypes();
  Future<List<BranchMetaItem>> getBranchAmenities();
  Future<ReviewDto> getReviews(String branchId);
}

class ClubDataSourceImpl implements ClubDataSource {
  @override
  Future<ClubDto> getBranches(ClubFilterRequest? request) async {
    final Map<String, dynamic> queryParameters = request?.toJson() ?? {};
    // Remove null values to avoid sending them in the query
    queryParameters.removeWhere((key, value) => value == null);
    final response = await DioClient().dio.get(
      AppConstants.branchesApiUrl,
      queryParameters: queryParameters,
    );
    // return ClubDto.fromJson(response.data);
    if (response.statusCode == 200) {
      return ClubDto.fromJson(response.data);
    } else {
      final errorModel = ErrorModel.fromJson(response.data);
      throw errorModel.message ?? 'Error in getBranches';
    }
  }

  @override
  Future<ClubDto> getMyFavorites() async {
    final response = await DioClient().dio.get(AppConstants.myFavoritesApiUrl);

    if (response.statusCode == 200) {
      return ClubDto.fromJson(response.data);
    } else {
      final errorModel = ErrorModel.fromJson(response.data);
      throw errorModel.message ?? 'Error in getMyFavorites';
    }
  }

  @override
  Future<GymDetailDto> getGymDetails(String id) async {
    final response = await DioClient().dio.get(
      '${AppConstants.branchesApiUrl}/$id',
    );

    if (response.statusCode == 200) {
      return GymDetailDto.fromJson(response.data);
    } else {
      final errorModel = ErrorModel.fromJson(response.data);
      throw errorModel.message ?? 'Error in getBranchDetails';
    }
  }

  @override
  Future<void> purchaseSubscription(String subscriptionPlanId) async {
    final response = await DioClient().dio.post(
      AppConstants.purchaseSubscriptionApiUrl,
      data: {'subscriptionPlanId': subscriptionPlanId},
    );

    if (response.statusCode == 200 || response.statusCode == 201) {
      return;
    } else {
      final errorModel = ErrorModel.fromJson(response.data);
      throw errorModel.message ?? 'Error in purchaseSubscription';
    }
  }

  @override
  Future<void> toggleFavorite(String branchId) async {
    final response = await DioClient().dio.post(
      AppConstants.toggleFavoriteApiUrl(branchId),
      data: {},
    );

    if (response.statusCode == 200 || response.statusCode == 201) {
      return;
    } else {
      final errorModel = ErrorModel.fromJson(response.data);
      throw errorModel.message ?? 'Error in toggleFavorite';
    }
  }

  @override
  Future<List<BranchMetaItem>> getBranchTypes() async {
    final response = await DioClient().dio.get(
      AppConstants.branchesMetaTypesApiUrl,
    );

    if (response.statusCode == 200) {
      final List<dynamic> data = response.data['data'] as List<dynamic>;
      return data
          .map((e) => BranchMetaItem.fromJson(e as Map<String, dynamic>))
          .toList();
    } else {
      final errorModel = ErrorModel.fromJson(response.data);
      throw errorModel.message ?? 'Error in getBranchTypes';
    }
  }

  @override
  Future<List<BranchMetaItem>> getBranchAmenities() async {
    final response = await DioClient().dio.get(
      AppConstants.branchesMetaAmenitiesApiUrl,
    );

    if (response.statusCode == 200) {
      final List<dynamic> data = response.data['data'] as List<dynamic>;
      return data
          .map((e) => BranchMetaItem.fromJson(e as Map<String, dynamic>))
          .toList();
    } else {
      final errorModel = ErrorModel.fromJson(response.data);
      throw errorModel.message ?? 'Error in getBranchAmenities';
    }
  }

  @override
  Future<ReviewDto> getReviews(String branchId) async {
    final response = await DioClient().dio.get(
      AppConstants.reviewsApiUrl,
      queryParameters: {'branchId': branchId, 'page': 1, 'limit': 100},
    );

    if (response.statusCode == 200) {
      return ReviewDto.fromJson(response.data);
    } else {
      final errorModel = ErrorModel.fromJson(response.data);
      throw errorModel.message ?? 'Error in getReviews';
    }
  }
}
