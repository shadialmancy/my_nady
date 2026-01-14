import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../data/models/club_filter_request.dart';
import '../../data/repositories_impl/club_repository_impl.dart';
import '../entities/club_entity.dart';

part 'club_repository.g.dart';

@Riverpod(keepAlive: true)
class ClubRepository extends _$ClubRepository {
  @override
  FutureOr<void> build() {}

  final ClubRepositoryImpl _clubRepositoryImpl = ClubRepositoryImpl();

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
}
