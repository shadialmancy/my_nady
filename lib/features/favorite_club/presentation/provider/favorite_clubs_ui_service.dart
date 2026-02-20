import 'package:my_nady_project/features/club/domain/entities/club_entity.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../features/club/domain/repositories/club_repository.dart';

part 'favorite_clubs_ui_service.g.dart';

@Riverpod(keepAlive: true)
class FavoriteClubsUiService extends _$FavoriteClubsUiService {
  @override
  FutureOr<ClubEntity?> build() {
    return null;
  }

  Future<ClubEntity?> fetchFavoriteClubs() async {
    state = const AsyncValue.loading();
    try {
      final repository = ref.read(clubRepositoryProvider.notifier);
      final results = await repository.getMyFavorites();
      state = AsyncValue.data(results);
      return results;
    } catch (e, st) {
      state = AsyncValue.error(e, st);
      rethrow;
    }
  }

  /// Optimistically remove a club from the list without triggering loading state.
  void removeFavoriteOptimistic(String clubId) {
    final current = state.asData?.value;
    if (current == null) return;
    final updatedClubs =
        current.clubs?.where((c) => c.id != clubId).toList() ?? [];
    state = AsyncValue.data(
      ClubEntity(clubs: updatedClubs, meta: current.meta),
    );
  }
}
