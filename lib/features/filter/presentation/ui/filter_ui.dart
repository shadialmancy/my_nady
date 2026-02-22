import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../core/constants/app_constants.dart';
import '../../../../core/constants/app_sizes.dart';
import '../../../../core/shared/widgets/widgets.dart';
import '../../../../features/club/data/models/club_filter_request.dart';
import '../provider/filter_service.dart';
import '../widgets/widgets.dart';
import 'package:my_nady_project/features/home/presentation/provider/home_ui_service.dart';

class FilterUi extends ConsumerStatefulWidget {
  const FilterUi({super.key, this.onApplyFilters, this.initialFilters});

  final Function(ClubFilterRequest)? onApplyFilters;
  final ClubFilterRequest? initialFilters;

  @override
  ConsumerState<FilterUi> createState() => _FilterUiState();
}

class _FilterUiState extends ConsumerState<FilterUi> {
  late TextEditingController searchController;
  late TextEditingController areaController;
  String? selectedGender;
  String? selectedTypeId;
  String? selectedArea;
  RangeValues priceRange = const RangeValues(0, 100000);
  num? radius;
  String? selectedSortBy;
  bool? hasOffers;
  Set<String> selectedAmenityIds = {};

  // Sample data - replace with actual data from your backend
  final List<String> gymNames = [
    'Gold\'s Gym',
    'Fitness First',
    'PowerHouse Gym',
    'CrossFit Arena',
    'Elite Fitness Club',
  ];

  final List<String> genders = ['Male', 'Female', 'Kids', 'Mix'];

  // final List<String> gymTypes = [
  //   'Bodybuilding',
  //   'Cross Fit',
  //   'Football',
  //   'Basketball',
  //   'Swimming',
  //   'Yoga',
  //   'Pilates',
  //   'Boxing',
  // ];

  final List<String> areas = [
    'Downtown',
    'Uptown',
    'East Side',
    'West Side',
    'North District',
    'South District',
  ];

  /// Sort order options matching API: -- (none), DISTANCE, PRICE, RATING, ALPHABETICAL
  static const String _sortNone = '--';
  final List<String> sortOptions = [
    _sortNone,
    'DISTANCE',
    'PRICE',
    'RATING',
    // 'ALPHABETICAL',
  ];

  @override
  void initState() {
    super.initState();
    searchController = TextEditingController();
    areaController = TextEditingController();

    // Initialize with existing filters from service or provided filters
    final filterService = ref.read(filterServiceProvider.notifier);
    final existingFilters =
        widget.initialFilters ?? filterService.currentFilters;
    if (existingFilters != null) {
      searchController.text = existingFilters.search ?? '';
      selectedGender = existingFilters.gender;
      selectedTypeId = existingFilters.typeId;
      selectedArea = existingFilters.area;
      priceRange = RangeValues(
        existingFilters.minPrice?.toDouble() ?? 0,
        existingFilters.maxPrice?.toDouble() ?? 10000000000,
      );
      radius = existingFilters.radius;
      selectedSortBy = existingFilters.sortBy?.toUpperCase();
      hasOffers = existingFilters.hasOffers;
      selectedAmenityIds = existingFilters.amenityIds?.toSet() ?? {};
    }

    // Persist current filtration every time the filter page is entered
    filterService.saveCurrentFilters();
  }

  @override
  void dispose() {
    searchController.dispose();
    areaController.dispose();
    super.dispose();
  }

  void _applyFilters() {
    final filterRequest = ClubFilterRequest(
      search: searchController.text.isEmpty ? null : searchController.text,
      gender: selectedGender?.toUpperCase(),
      typeId: selectedTypeId,
      amenityIds: selectedAmenityIds.isEmpty
          ? null
          : selectedAmenityIds.toList(),
      area: selectedArea,
      minPrice: priceRange.start,
      maxPrice: priceRange.end,
      radius: radius,
      sortBy: selectedSortBy,
      hasOffers: hasOffers,
    );
    logger.i(filterRequest.toString());

    // Apply filters in the provider
    ref.read(filterServiceProvider.notifier).applyFilters(filterRequest);

    // Call fetchHomeData from HomeUiService to get filtered data
    ref
        .read(homeUiServiceProvider.notifier)
        .fetchHomeData(filterRequest: filterRequest);

    widget.onApplyFilters?.call(filterRequest);
    context.router.maybePop(filterRequest);
  }

  void _resetFilters() {
    // Reset filters in the provider
    ref.read(filterServiceProvider.notifier).resetFilters();

    // Reset local UI state
    setState(() {
      searchController.clear();
      areaController.clear();
      selectedGender = null;
      selectedTypeId = null;
      selectedArea = null;
      priceRange = const RangeValues(0, 100000);
      radius = null;
      selectedSortBy = null;
      hasOffers = null;
      selectedAmenityIds = {};
    });
  }

  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);

    // Ensure FilterService is built (and meta loaded)
    final filterService = ref.read(filterServiceProvider.notifier);

    // Get types and amenities from FilterService
    final types = filterService.branchTypesAsMaps;
    final amenities = filterService.branchAmenitiesAsMaps;
    logger.d(types);
    return Container(
      decoration: BoxDecoration(
        color: theme.white,
        borderRadius: const .only(
          topLeft: .circular(24),
          topRight: .circular(24),
        ),
      ),
      child: Column(
        children: [
          // Handle bar
          Container(
            margin: const .only(top: 12),
            width: 40,
            height: 4,
            decoration: BoxDecoration(
              color: theme.grey,
              borderRadius: .circular(2),
            ),
          ),
          gapH16,

          // Header
          Padding(
            padding: const .symmetric(horizontal: AppSizes.p20),
            child: Row(
              mainAxisAlignment: .spaceBetween,
              children: [
                Text(l10n.filter, style: theme.headlineSmall),
                IconButton(
                  icon: Icon(Icons.close, color: theme.primaryText),
                  onPressed: () => Navigator.pop(context),
                ),
              ],
            ),
          ),
          gapH8,

          // Divider
          Divider(color: theme.borderGrey, height: 1),

          // Filter content
          Expanded(
            child: ListView(
              padding: const .all(AppSizes.p20),
              children: [
                // 1. Gym/Club Name (Searchable)
                SectionTitle(title: l10n.gymclubName),
                gapH8,
                SearchableDropdown(
                  controller: searchController,
                  items: gymNames,
                  hint: l10n.searchGymName,
                  onSelected: (value) {
                    setState(() {
                      searchController.text = value;
                    });
                  },
                ),
                gapH20,
                // 2. Gender
                SectionTitle(title: 'Gender'),
                gapH8,
                GenderSelector(
                  genders: genders,
                  selectedGender: selectedGender,
                  onSelected: (value) {
                    setState(() {
                      if (selectedGender != null &&
                          selectedGender!.toUpperCase() ==
                              value.toUpperCase()) {
                        selectedGender = null;
                      } else {
                        selectedGender = value;
                      }
                    });
                  },
                ),
                gapH20,
                // 3. Gym/Club Type (from FilterService)
                AsyncValueWidget(
                  value: ref.watch(filterServiceProvider),
                  builder: (_) {
                    return Column(
                      mainAxisAlignment: .start,
                      crossAxisAlignment: .start,
                      children: [
                        SectionTitle(title: 'Gym/Club Type'),
                        gapH8,
                        types.isEmpty
                            ? const Center(child: CircularProgressIndicator())
                            : GenderSelector(
                                genders: types
                                    .map((e) => e['name'] ?? '')
                                    .toList(),
                                selectedGender: () {
                                  if (selectedTypeId == null) return null;
                                  for (final e in types) {
                                    if ((e['id'] ?? '') == selectedTypeId) {
                                      return e['name'] ?? '';
                                    }
                                  }
                                  return null;
                                }(),
                                onSelected: (value) {
                                  setState(() {
                                    final typeNameLower = value
                                        .toString()
                                        .toLowerCase();
                                    String? newId;
                                    for (final e in types) {
                                      if ((e['name'] ?? '').toLowerCase() ==
                                          typeNameLower) {
                                        newId = e['id'];
                                        break;
                                      }
                                    }
                                    if (selectedTypeId == newId) {
                                      selectedTypeId = null;
                                    } else {
                                      selectedTypeId = newId;
                                    }
                                  });
                                },
                              ),
                        gapH20,

                        // 4. Amenities (from FilterService)
                        SectionTitle(title: 'Amenities'),
                        gapH8,
                        amenities.isEmpty
                            ? const Center(child: CircularProgressIndicator())
                            : CheckboxGroup(
                                items: amenities
                                    .map((e) => e['name'] ?? '')
                                    .toList(),
                                selectedItems: amenities
                                    .where(
                                      (e) =>
                                          selectedAmenityIds.contains(e['id']),
                                    )
                                    .map((e) => e['name'] ?? '')
                                    .toSet(),
                                onChanged: (label, isSelected) {
                                  setState(() {
                                    final amenity = amenities.firstWhere(
                                      (e) => e['name'] == label,
                                      orElse: () => <String, String?>{},
                                    );
                                    final id = amenity['id'];
                                    if (id == null) return;
                                    if (isSelected) {
                                      selectedAmenityIds.add(id);
                                    } else {
                                      selectedAmenityIds.remove(id);
                                    }
                                  });
                                },
                              ),
                        gapH20,
                      ],
                    );
                  },
                ),

                // // 4. Gym/Club Area (Searchable)
                // SectionTitle(title: 'Gym/Club Area'),
                // gapH8,
                // AreaDropdown(
                //   areas: areas,
                //   selectedArea: selectedArea,
                //   onSelected: (value) {
                //     setState(() {
                //       selectedArea = value;
                //     });
                //   },
                // ),
                // gapH20,
                // 5. Price Range
                SectionTitle(title: 'Price Range'),
                gapH8,
                PriceSlider(
                  priceRange: priceRange,
                  onSelected: (value) {
                    setState(() {
                      priceRange = value;
                    });
                  },
                ),
                gapH20,

                // 6. Radius
                SectionTitle(title: 'Radius (km)'),
                gapH8,
                Slider(
                  value: radius?.toDouble() ?? 0,
                  min: 0,
                  max: 10000000,
                  divisions: 20,
                  activeColor: theme.primary,
                  inactiveColor: theme.borderGrey,
                  label: '${radius?.round() ?? 0} km',
                  onChanged: (value) {
                    setState(() {
                      radius = value;
                    });
                  },
                ),
                gapH20,

                // 7. Sort order
                SectionTitle(title: 'Sort order'),
                gapH8,
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: theme.borderGrey),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton<String>(
                      isExpanded: true,
                      value:
                          selectedSortBy != null &&
                              sortOptions.contains(selectedSortBy)
                          ? selectedSortBy!
                          : _sortNone,
                      hint: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Text(
                          _sortNone,
                          style: theme.bodyMedium.copyWith(
                            color: theme.primaryText,
                          ),
                        ),
                      ),
                      icon: Padding(
                        padding: const EdgeInsets.only(right: 16),
                        child: Icon(
                          Icons.keyboard_arrow_down,
                          color: theme.primaryText,
                        ),
                      ),
                      dropdownColor: theme.white,
                      items: sortOptions
                          .map(
                            (option) => DropdownMenuItem<String>(
                              value: option,
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 16,
                                ),
                                child: Text(
                                  option,
                                  style: theme.bodyMedium.copyWith(
                                    color: theme.primaryText,
                                  ),
                                ),
                              ),
                            ),
                          )
                          .toList(),
                      onChanged: (value) {
                        setState(() {
                          if (value == null || value == _sortNone) {
                            selectedSortBy = null;
                          } else {
                            selectedSortBy = value;
                          }
                        });
                      },
                    ),
                  ),
                ),
                gapH20,

                // 8. Includes Offer
                OfferCheckbox(
                  includesOffer: hasOffers ?? false,
                  onSelected: (value) {
                    setState(() {
                      hasOffers = value;
                    });
                  },
                ),
                gapH32,
              ],
            ),
          ),

          // Bottom buttons
          Container(
            padding: const EdgeInsets.all(AppSizes.p20),
            decoration: BoxDecoration(
              color: theme.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withValues(alpha: 0.05),
                  blurRadius: 10,
                  offset: const Offset(0, -2),
                ),
              ],
            ),
            child: Row(
              children: [
                Expanded(
                  child: CustomButton(
                    onPressed: _resetFilters,
                    backgroundColor: theme.white,
                    titleStyle: theme.titleSmall.copyWith(color: theme.primary),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(color: theme.primary),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    title: l10n.reset,
                  ),
                ),
                gapW16,
                Expanded(
                  flex: 2,
                  child: CustomButton(
                    onPressed: _applyFilters,
                    title: l10n.apply,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// Filter data model
