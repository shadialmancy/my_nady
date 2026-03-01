import 'dart:convert';

import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../core/constants/app_constants.dart';
import '../../../../features/club/data/models/club_filter_request.dart';
import '../../../club/data/models/branch_meta_item.dart';
import '../../../club/domain/repositories/club_repository.dart';

part 'filter_service.g.dart';

const String _persistedFiltersKey = 'club_filter_request';

@Riverpod(keepAlive: true)
class FilterService extends _$FilterService {
  @override
  Future<List<Map<String, dynamic>>?> build() async {
    filteredClubList = clubList;
    // Preload types & amenities for the filter UI
    await _loadBranchMeta();
    await _loadPersistedFilters();
    return filteredClubList;
  }

  Future<void> _loadPersistedFilters() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final json = prefs.getString(_persistedFiltersKey);
      if (json != null && json.isNotEmpty) {
        final map = jsonDecode(json) as Map<String, dynamic>?;
        if (map != null && map.isNotEmpty) {
          _currentFilters = ClubFilterRequest.fromJson(map);
        }
      }
    } catch (e) {
      logger.e('Error loading persisted filters: $e');
    }
  }

  Future<void> _persistFilters(ClubFilterRequest? request) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      if (request == null) {
        await prefs.remove(_persistedFiltersKey);
      } else {
        await prefs.setString(
          _persistedFiltersKey,
          jsonEncode(request.toJson()),
        );
      }
    } catch (e) {
      logger.e('Error persisting filters: $e');
    }
  }

  /// Persist current filter state (e.g. when entering the filter page).
  void saveCurrentFilters() {
    _persistFilters(_currentFilters);
  }

  List<Map<String, dynamic>> clubList = [];

  List<Map<String, dynamic>> filteredClubList = [];

  // Branch types & amenities (only id, name, icon)
  List<BranchMetaItem> branchTypes = [];
  List<BranchMetaItem> branchAmenities = [];

  Future<void> _loadBranchMeta() async {
    try {
      final repo = ref.read(clubRepositoryProvider.notifier);
      final types = await repo.getBranchTypes();
      final amenities = await repo.getBranchAmenities();

      branchTypes = types;
      branchAmenities = amenities;
    } catch (e) {
      logger.e('Error loading branch meta: $e');
      // Set empty lists on error to prevent crashes
      branchTypes = [];
      branchAmenities = [];
    }
  }

  /// Get branch types as simple maps for UI convenience
  List<Map<String, String?>> get branchTypesAsMaps => branchTypes
      .map((e) => {'id': e.id, 'name': e.name, 'icon': e.icon})
      .toList();

  /// Get branch amenities as simple maps for UI convenience
  List<Map<String, String?>> get branchAmenitiesAsMaps => branchAmenities
      .map((e) => {'id': e.id, 'name': e.name, 'icon': e.icon})
      .toList();

  /// Apply filters and update the state
  void applyFilters(ClubFilterRequest filterRequest) {
    logger.i('Applying filters: $filterRequest');

    // Store current filter data (in memory and persisted)
    _currentFilters = filterRequest;
    _persistFilters(filterRequest);

    // Apply filtering logic
    filteredClubList = clubList.where((club) {
      // Gender / category
      if (filterRequest.gender != null) {
        final clubCategory = club['category']?.toString().toLowerCase();
        final filterGender = filterRequest.gender!.toLowerCase();

        if (clubCategory != filterGender) {
          return false;
        }
      }

      // Gym name search
      if (filterRequest.search != null && filterRequest.search!.isNotEmpty) {
        final clubTitle = club['title']?.toString().toLowerCase() ?? '';
        final searchName = filterRequest.search!.toLowerCase();

        if (!clubTitle.contains(searchName)) {
          return false;
        }
      }

      // Type (branch type id) - expect club['typeId'] or similar
      if (filterRequest.typeId != null && filterRequest.typeId!.isNotEmpty) {
        final clubTypeId = club['typeId']?.toString();
        if (clubTypeId != filterRequest.typeId) {
          return false;
        }
      }

      // Amenities (list of amenity ids) - expect club['amenityIds'] as List<String>
      if (filterRequest.amenityIds != null &&
          filterRequest.amenityIds!.isNotEmpty) {
        final List<dynamic>? clubAmenityIdsDynamic =
            club['amenityIds'] as List<dynamic>?;
        final clubAmenityIds =
            clubAmenityIdsDynamic?.map((e) => e.toString()).toList() ??
            <String>[];

        // require that all selected amenities exist in the club
        final allSelectedExist = filterRequest.amenityIds!.every(
          (selectedId) => clubAmenityIds.contains(selectedId),
        );

        if (!allSelectedExist) {
          return false;
        }
      }

      // Area - expect club['area'] or club['locationArea']
      if (filterRequest.area != null && filterRequest.area!.isNotEmpty) {
        final clubArea = (club['area'] ?? club['locationArea'])
            ?.toString()
            .toLowerCase();
        final filterArea = filterRequest.area!.toLowerCase();
        if (clubArea == null || clubArea != filterArea) {
          return false;
        }
      }

      // Price range - expect numeric 'minPrice' / 'maxPrice' on club
      if (filterRequest.minPrice != null || filterRequest.maxPrice != null) {
        final clubMinPrice =
            (club['minPrice'] ?? club['price'])
                as num?; // fallback to single price field
        final clubMaxPrice =
            (club['maxPrice'] ?? club['price']) as num?; // same fallback

        if (clubMinPrice != null && filterRequest.maxPrice != null) {
          if (clubMinPrice > filterRequest.maxPrice!) {
            return false;
          }
        }
        if (clubMaxPrice != null && filterRequest.minPrice != null) {
          if (clubMaxPrice < filterRequest.minPrice!) {
            return false;
          }
        }
      }

      // Includes offer - expect boolean 'hasOffers' or non‑empty 'offers' list
      if (filterRequest.hasOffers == true) {
        final hasOffersFlag = club['hasOffers'] as bool?;
        final offersList = club['offers'] as List<dynamic>?;

        final clubHasOffers =
            hasOffersFlag == true ||
            (offersList != null && offersList.isNotEmpty);

        if (!clubHasOffers) {
          return false;
        }
      }

      // Sort is handled at API/UI level, not here

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
    _persistFilters(null);
    filteredClubList = clubList;
    state = AsyncValue.data(clubList);
  }

  /// Check if any filters are active
  bool get hasActiveFilters => _currentFilters != null;

  /// Get current filter data
  ClubFilterRequest? _currentFilters;
  ClubFilterRequest? get currentFilters => _currentFilters;
}
