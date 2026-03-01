import 'package:my_nady_project/features/club/domain/entities/club_entity.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../features/club/data/models/club_filter_request.dart';
import '../../../../features/club/domain/repositories/club_repository.dart';
import '../../../club/presentation/provider/map_location_service.dart';

part 'home_ui_service.g.dart';

@Riverpod(keepAlive: true)
class HomeUiService extends _$HomeUiService {
  @override
  FutureOr<ClubEntity?> build() {
    return fetchHomeData();
  }

  /// Optimistically update a club's favorite status in the home club list.
  void updateClubFavoriteStatus(String clubId, bool isFavorite) {
    final current = state.asData?.value;
    if (current == null) return;
    final updatedClubs =
        current.clubs
            ?.map(
              (c) => c.id == clubId ? c.copyWith(isFavorite: isFavorite) : c,
            )
            .toList() ??
        [];
    state = AsyncValue.data(
      ClubEntity(clubs: updatedClubs, meta: current.meta),
    );
  }

  Future<ClubEntity?> fetchHomeData({ClubFilterRequest? filterRequest}) async {
    state = const AsyncValue.loading();
    try {
      final repository = ref.read(clubRepositoryProvider.notifier);
      final locationService = ref.read(mapLocationServiceProvider.notifier);

      final results = await repository.getBranches(
        request:
            filterRequest?.copyWith(
              lat: locationService.currentPosition.latitude,
              lng: locationService.currentPosition.longitude,
              limit: filterRequest.limit ?? 100,
              page: filterRequest.page ?? 1,
            ) ??
            ClubFilterRequest(
              limit: 100,
              page: 1,
              lat: locationService.currentPosition.latitude,
              lng: locationService.currentPosition.longitude,
              radius: 100,
            ),
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
