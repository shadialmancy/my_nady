import 'package:my_nady_project/features/club/domain/entities/club_entity.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../features/club/data/models/club_filter_request.dart';
import '../../../../features/club/domain/repositories/club_repository.dart';
import '../../../club/presentation/provider/map_location_service.dart';
import '../../../address_book/presentation/provider/address_book_ui_service.dart';

part 'home_ui_service.g.dart';

@Riverpod(keepAlive: true)
class HomeUiService extends _$HomeUiService {
  @override
  FutureOr<ClubEntity?> build() {
    ref.watch(defaultAddressProvider);
    return fetchHomeData();
    // return null;
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
      final defaultAddr = ref.read(defaultAddressProvider);

      num? lat = locationService.currentPosition.latitude != 0
          ? locationService.currentPosition.latitude
          : null;
      num? lng = locationService.currentPosition.longitude != 0
          ? locationService.currentPosition.longitude
          : null;

      // Use default address coordinates if available
      if (defaultAddr != null && defaultAddr.location?.coordinates != null) {
        final coords = defaultAddr.location!.coordinates;
        if (coords is List && coords.length >= 2) {
          lng = coords[0] as num;
          lat = coords[1] as num;
        } else if (coords is Map &&
            coords.containsKey('coordinates') &&
            coords['coordinates'] is List &&
            (coords['coordinates'] as List).length >= 2) {
          lng = coords['coordinates'][0] as num;
          lat = coords['coordinates'][1] as num;
        }
      }

      final results = await repository.getBranches(
        request:
            filterRequest?.copyWith(
              lat: lat,
              lng: lng,
              limit: filterRequest.limit ?? 100,
              page: filterRequest.page ?? 1,
            ) ??
            ClubFilterRequest(
              limit: 100,
              page: 1,
              lat: lat,
              lng: lng,
              radius: lat != null ? 100 : null,
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
