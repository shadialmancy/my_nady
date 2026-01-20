import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../../core/constants/app_constants.dart';
import '../../../../core/helpers/assets_helper.dart';
import '../../../../features/club/data/models/club_filter_request.dart';

part 'filter_service.g.dart';

@Riverpod(keepAlive: true)
class FilterService extends _$FilterService {
  @override
  Future<List<Map<String, dynamic>>?> build() async {
    filteredClubList = clubList;
    return filteredClubList;
  }

  // TODO: make sure to make separated one for the resource gym
  List<Map<String, dynamic>> clubList = [
    {
      "image": AssetsHelper.gymBanner,
      "title": "Iron Man Gym",
      "location": "30k. Khaitan and Salmiya.",
      "category": "Kids",

      "rating": "4.99k",
      "price": "20%",
    },
    {
      "image": AssetsHelper.gymBanner,
      "title": "Iron Man Gym",
      "location": "30k. Khaitan and Salmiya.",
      "category": "Kids",
      "rating": "4.99k",
      "price": "20%",
    },
    {
      "image": AssetsHelper.gymBanner,
      "title": "Iron Man Gym",
      "location": "30k. Khaitan and Salmiya.",
      "category": "Kids",
      "rating": "4.99k",
      "price": "20%",
    },
    {
      "image": AssetsHelper.gymBanner,
      "title": "Iron Man Gym",
      "location": "30k. Khaitan and Salmiya.",
      "category": "Male",
      "rating": "4.99k",
      "price": "20%",
    },
    {
      "image": AssetsHelper.gymBanner,
      "title": "Iron Man Gym",
      "location": "30k. Khaitan and Salmiya.",
      "category": "Male",
      "rating": "4.99k",
      "price": "20%",
    },
    {
      "image": AssetsHelper.gymBanner,
      "title": "Iron Man Gym",
      "location": "30k. Khaitan and Salmiya.",
      "category": "Male",
      "rating": "4.99k",
      "price": "20%",
    },
    {
      "image": AssetsHelper.gymBanner,
      "title": "Iron Man Gym",
      "location": "30k. Khaitan and Salmiya.",
      "category": "Female",
      "rating": "4.99k",
      "price": "20%",
    },
    {
      "image": AssetsHelper.gymBanner,
      "title": "Iron Man Gym",
      "location": "30k. Khaitan and Salmiya.",
      "category": "Female",
      "rating": "4.99k",
      "price": "20%",
    },
    {
      "image": AssetsHelper.gymBanner,
      "title": "Iron Man Gym",
      "location": "30k. Khaitan and Salmiya.",
      "category": "Female",
      "rating": "4.99k",
      "price": "20%",
    },
    {
      "image": AssetsHelper.gymBanner,
      "title": "Iron Man Gym",
      "location": "30k. Khaitan and Salmiya.",
      "category": "Family",
      "rating": "4.99k",
      "price": "20%",
    },
    {
      "image": AssetsHelper.gymBanner,
      "title": "Iron Man Gym",
      "location": "30k. Khaitan and Salmiya.",
      "category": "Family",
      "rating": "4.99k",
      "price": "20%",
    },
    {
      "image": AssetsHelper.gymBanner,
      "title": "Iron Man Gym",
      "location": "30k. Khaitan and Salmiya.",
      "category": "Family",
      "rating": "4.99k",
      "price": "20%",
    },
    {
      "image": AssetsHelper.gymBanner,
      "title": "Iron Man Gym",
      "location": "30k. Khaitan and Salmiya.",
      "category": "Family",
      "rating": "4.99k",
      "price": "20%",
    },
  ];

  List<Map<String, dynamic>> filteredClubList = [];

  /// Apply filters and update the state
  void applyFilters(ClubFilterRequest filterRequest) {
    logger.i('Applying filters: $filterRequest');

    // Store current filter data
    _currentFilters = filterRequest;

    // Apply filtering logic
    filteredClubList = clubList.where((club) {
      // Filter by gender/category
      if (filterRequest.gender != null) {
        final clubCategory = club['category']?.toString().toLowerCase();
        final filterGender = filterRequest.gender!.toLowerCase();

        if (clubCategory != filterGender) {
          return false;
        }
      }

      // Filter by gym name
      if (filterRequest.search != null && filterRequest.search!.isNotEmpty) {
        final clubTitle = club['title']?.toString().toLowerCase() ?? '';
        final searchName = filterRequest.search!.toLowerCase();

        if (!clubTitle.contains(searchName)) {
          return false;
        }
      }

      // Add more filter logic here for other fields:
      // - gymTypes
      // - area
      // - facilities
      // - priceRange
      // - subscriptionType
      // - includesOffer

      return true;
    }).toList();

    logger.i(
      'Filtered ${filteredClubList.length} clubs from ${clubList.length}',
    );
    state = AsyncValue.data(filteredClubList);
  }

  /// Reset all filters
  void resetFilters() {
    _currentFilters = null;
    filteredClubList = clubList;
    state = AsyncValue.data(clubList);
  }

  /// Check if any filters are active
  bool get hasActiveFilters => _currentFilters != null;

  /// Get current filter data
  ClubFilterRequest? _currentFilters;
  ClubFilterRequest? get currentFilters => _currentFilters;
}
