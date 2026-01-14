import '../../domain/entities/club_entity.dart';
import '../datasource/club_datasource.dart';
import '../models/club_dto/club_dto.dart';
import '../models/club_filter_request.dart';

abstract class BaseClubRepository {
  Future<ClubEntity> getBranches({ClubFilterRequest? request});
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
}
