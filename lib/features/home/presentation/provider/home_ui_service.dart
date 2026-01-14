import 'package:my_nady_project/features/club/domain/entities/club_entity.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../features/club/data/models/club_filter_request.dart';
import '../../../../features/club/domain/repositories/club_repository.dart';

part 'home_ui_service.g.dart';

@Riverpod(keepAlive: true)
class HomeUiService extends _$HomeUiService {
  @override
  FutureOr<ClubEntity?> build() {
    return fetchHomeData();
  }

  Future<ClubEntity?> fetchHomeData() async {
    state = const AsyncValue.loading();
    try {
      final repository = ref.read(clubRepositoryProvider.notifier);

      final results = await repository.getBranches(
        request: ClubFilterRequest(limit: 100),
      );

      final newState = results;

      state = AsyncValue.data(newState);
      return newState;
    } catch (e, st) {
      state = AsyncValue.error(e, st);
      rethrow;
    }
  }
}
