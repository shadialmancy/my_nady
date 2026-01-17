import '../../domain/entities/club_entity.dart';
import '../../domain/entities/gym_detail_entity.dart';
import '../datasource/club_datasource.dart';
import '../models/club_dto/club_dto.dart';
import '../models/club_filter_request.dart';

import 'package:my_nady_project/features/club/data/models/gym_detail_dto/gym_detail_dto.dart';

abstract class BaseClubRepository {
  Future<ClubEntity> getBranches({ClubFilterRequest? request});
  Future<GymDetailEntity> getGymDetails(String id);
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
  Future<GymDetailEntity> getGymDetails(String id) async {
    try {
      return await dataSource.getGymDetails(id).then((value) {
        return value.toEntity();
      });
    } catch (e) {
      rethrow;
    }
  }
}
