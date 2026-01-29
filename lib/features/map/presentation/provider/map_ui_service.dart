import 'package:my_nady_project/features/club/domain/entities/club_entity.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../features/club/data/models/club_filter_request.dart';
import '../../../../features/club/domain/repositories/club_repository.dart';

part 'map_ui_service.g.dart';

@riverpod
class MapUiService extends _$MapUiService {
  @override
  FutureOr<ClubEntity?> build() {
    return fetchMapData();
  }

  Future<ClubEntity?> fetchMapData({ClubFilterRequest? filterRequest}) async {
    state = const AsyncValue.loading();
    try {
      final repository = ref.read(clubRepositoryProvider.notifier);

      final results = await repository.getBranches(
        request:
            filterRequest?.copyWith(
              limit: filterRequest.limit ?? 100,
              page: filterRequest.page ?? 1,
            ) ??
            ClubFilterRequest(limit: 100, page: 1),
      );

      state = AsyncValue.data(results);
      return results;
    } catch (e, st) {
      state = AsyncValue.error(e, st);
      rethrow;
    }
  }
}
