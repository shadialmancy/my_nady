import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../core/constants/app_constants.dart';
import '../../../../core/constants/app_sizes.dart';
import '../../../../core/shared/widgets/widgets.dart';
import '../../data/model/filter_model.dart';
import '../provider/filter_service.dart';
import '../widgets/widgets.dart';

class FilterUi extends ConsumerStatefulWidget {
  const FilterUi({super.key, this.onApplyFilters, this.initialFilters});

  final Function(FilterData)? onApplyFilters;
  final FilterData? initialFilters;

  @override
  ConsumerState<FilterUi> createState() => _FilterUiState();
}

class _FilterUiState extends ConsumerState<FilterUi> {
  late TextEditingController gymNameController;
  late TextEditingController areaController;
  String? selectedGender;
  final Set<String> selectedGymTypes = {};
  String? selectedArea;
  final Set<String> selectedFacilities = {};
  RangeValues priceRange = const RangeValues(0, 100000);
  String? selectedSubscriptionType;
  bool includesOffer = false;

  // Sample data - replace with actual data from your backend
  final List<String> gymNames = [
    'Gold\'s Gym',
    'Fitness First',
    'PowerHouse Gym',
    'CrossFit Arena',
    'Elite Fitness Club',
  ];

  final List<String> genders = ['Male', 'Female', 'Kids', 'Mix', 'Family'];

  final List<String> gymTypes = [
    'Bodybuilding',
    'Cross Fit',
    'Football',
    'Basketball',
    'Swimming',
    'Yoga',
    'Pilates',
    'Boxing',
  ];

  final List<String> areas = [
    'Downtown',
    'Uptown',
    'East Side',
    'West Side',
    'North District',
    'South District',
  ];

  final List<String> facilities = [
    'Swimming Pool',
    'Cafeteria',
    'Sauna',
    'Steam Room',
    'Parking',
    'Locker Room',
    'Personal Training',
    'Group Classes',
  ];

  final List<String> subscriptionTypes = [
    'Daily',
    'Monthly',
    '3 Month',
    '6 Month',
    'Annually',
  ];

  @override
  void initState() {
    super.initState();
    gymNameController = TextEditingController();
    areaController = TextEditingController();

    // Initialize with existing filters from service or provided filters
    final existingFilters =
        widget.initialFilters ??
        ref.read(filterServiceProvider.notifier).currentFilters;

    if (existingFilters != null) {
      gymNameController.text = existingFilters.gymName ?? '';
      selectedGender = existingFilters.gender;
      selectedGymTypes.addAll(existingFilters.gymTypes);
      selectedArea = existingFilters.area;
      selectedFacilities.addAll(existingFilters.facilities);
      priceRange = existingFilters.priceRange;
      selectedSubscriptionType = existingFilters.subscriptionType;
      includesOffer = existingFilters.includesOffer;
    }
  }

  @override
  void dispose() {
    gymNameController.dispose();
    areaController.dispose();
    super.dispose();
  }

  void _applyFilters() {
    final filterData = FilterData(
      gymName: gymNameController.text.isEmpty ? null : gymNameController.text,
      gender: selectedGender,
      gymTypes: selectedGymTypes.toList(),
      area: selectedArea,
      facilities: selectedFacilities.toList(),
      priceRange: priceRange,
      subscriptionType: selectedSubscriptionType,
      includesOffer: includesOffer,
    );
    logger.i(filterData.toString());

    // Apply filters in the provider
    ref.read(filterServiceProvider.notifier).applyFilters(filterData);

    widget.onApplyFilters?.call(filterData);
    context.router.maybePop(filterData);
  }

  void _resetFilters() {
    // Reset filters in the provider
    ref.read(filterServiceProvider.notifier).resetFilters();

    // Reset local UI state
    setState(() {
      gymNameController.clear();
      areaController.clear();
      selectedGender = null;
      selectedGymTypes.clear();
      selectedArea = null;
      selectedFacilities.clear();
      priceRange = const RangeValues(0, 100000);
      selectedSubscriptionType = null;
      includesOffer = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);

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
                  controller: gymNameController,
                  items: gymNames,
                  hint: l10n.searchGymName,
                  onSelected: (value) {
                    setState(() {
                      gymNameController.text = value;
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
                      selectedGender = value;
                    });
                  },
                ),
                gapH20,
                // 3. Gym/Club Type
                SectionTitle(title: 'Gym/Club Type'),
                gapH8,
                CheckboxGroup(
                  items: gymTypes,
                  selectedItems: selectedGymTypes,
                  onChanged: (value, isSelected) {
                    setState(() {
                      if (isSelected) {
                        selectedGymTypes.add(value);
                      } else {
                        selectedGymTypes.remove(value);
                      }
                    });
                  },
                ),
                gapH20,

                // 4. Gym/Club Area (Searchable)
                SectionTitle(title: 'Gym/Club Area'),
                gapH8,
                AreaDropdown(
                  areas: areas,
                  selectedArea: selectedArea,
                  onSelected: (value) {
                    setState(() {
                      selectedArea = value;
                    });
                  },
                ),
                gapH20,
                // 5. Gym/Club Facilities
                SectionTitle(title: 'Gym/Club Facilities'),
                gapH8,
                CheckboxGroup(
                  items: facilities,
                  selectedItems: selectedFacilities,
                  onChanged: (value, isSelected) {
                    setState(() {
                      if (isSelected) {
                        selectedFacilities.add(value);
                      } else {
                        selectedFacilities.remove(value);
                      }
                    });
                  },
                ),
                gapH20,

                // 6. Price Range
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
                // 7. Subscription Type
                SectionTitle(title: 'Subscription Type'),
                gapH8,
                SubscriptionTypeSelector(
                  subscriptionTypes: subscriptionTypes,
                  selectedSubscriptionType: selectedSubscriptionType,
                  onSelected: (value) {
                    setState(() {
                      selectedSubscriptionType = value;
                    });
                  },
                ),
                gapH20,
                // 8. Includes Offer
                OfferCheckbox(
                  includesOffer: includesOffer,
                  onSelected: (value) {
                    setState(() {
                      includesOffer = value;
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
