import 'package:my_nady_project/core/constants/app_constants.dart';
import 'package:my_nady_project/features/club/data/models/club_dto/club_dto.dart';
import 'package:my_nady_project/features/authentication/data/models/error_model/error_model.dart';
import '../models/club_filter_request.dart';
import '../../../../core/api/apis.dart';

abstract class ClubDataSource {
  Future<ClubDto> getBranches(ClubFilterRequest? request);
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

    if (response.statusCode == 200) {
      return ClubDto.fromJson(response.data);
    } else {
      final errorModel = ErrorModel.fromJson(response.data);
      throw errorModel.message ?? 'Error in getBranches';
    }
  }
}
