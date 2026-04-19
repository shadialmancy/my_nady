import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_nady_project/core/shared/widgets/widgets.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../../core/constants/app_sizes.dart';
import '../../../filter/presentation/provider/filter_service.dart';
import '../widgets/widgets.dart';

import '../provider/home_ui_service.dart';

import '../provider/home_search_provider.dart';

// import 'package:my_nady_project/core/shared/widgets/app_toast.dart';
// import 'package:my_nady_project/core/shared/widgets/location_permission_dialog.dart';
// import 'package:my_nady_project/features/club/presentation/provider/map_location_service.dart';

class HomeUi extends ConsumerStatefulWidget {
  const HomeUi({super.key});

  @override
  ConsumerState<HomeUi> createState() => _HomeUiState();
}

class _HomeUiState extends ConsumerState<HomeUi> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      // final locationService = ref.read(mapLocationServiceProvider.notifier);
      // final serviceEnabled = await locationService.isLocationServiceEnabled();
      // if (!serviceEnabled && mounted) {
      //   AppToast.infoToast('Please enable location services');
      //   await locationService.openLocationSettings();
      // } else {
      //   final hasPermission = await locationService.hasLocationPermission();
      //   if (!hasPermission && mounted) {
      //     showLocationPerimssionDialog(context, ref);
      //   }
      // }
    });
  }

  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);
    final homeUiService = ref.watch(homeUiServiceProvider.notifier);
    final searchQuery = ref.watch(homeSearchQueryProvider).toLowerCase();
    return RefreshIndicator(
      backgroundColor: theme.white,
      color: theme.primary,
      onRefresh: () async {
        final currentFilters = ref
            .read(filterServiceProvider.notifier)
            .currentFilters;
        await homeUiService.fetchHomeData(filterRequest: currentFilters);
      },
      child: AsyncValueWidget(
        value: ref.watch(homeUiServiceProvider),
        builder: (clubEntity) {
          final unfilteredClubs = clubEntity?.clubs ?? [];
          final allClubs = searchQuery.isEmpty
              ? unfilteredClubs
              : unfilteredClubs
                    .where(
                      (e) =>
                          e.name?.toLowerCase().contains(searchQuery) ?? false,
                    )
                    .toList();

          final mixClubs = allClubs
              .where((e) => e.genderType?.toLowerCase() == 'mixed')
              .toList();
          final maleClubs = allClubs
              .where((e) => e.genderType?.toLowerCase() == 'male')
              .toList();
          final femaleClubs = allClubs
              .where((e) => e.genderType?.toLowerCase() == 'female')
              .toList();
          final kidsClubs = allClubs
              .where((e) => e.genderType?.toLowerCase() == 'kids')
              .toList();
          // final familyClubs = allClubs
          //     .where((e) => e.genderType?.toLowerCase() == 'family')
          //     .toList();
          final featuredClubs = allClubs
              .where((e) => e.isFeatured == true)
              .toList();

          return SingleChildScrollView(
            physics: const AlwaysScrollableScrollPhysics(),
            padding: .only(top: 6.sh, bottom: 14.sh),
            child: Column(
              crossAxisAlignment: .start,
              children: [
                const AppBarWithSearchTextField(),
                if (allClubs.isEmpty)
                  Padding(
                    padding: .only(top: 20.sh),
                    child: Center(
                      child: Text(
                        l10n.noBranchNearBy,
                        style: theme.titleLarge.copyWith(
                          color: theme.primary,
                          fontWeight: .bold,
                        ),
                      ),
                    ),
                  )
                else ...[
                  if (clubEntity?.isSuggestion ?? false)
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 4.sw),
                      child: Container(
                        padding: const EdgeInsets.all(12),
                        margin: .only(top: 16),
                        decoration: BoxDecoration(
                          color: theme.primary.withValues(alpha: 0.05),
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(
                            color: theme.primary.withValues(alpha: 0.2),
                          ),
                        ),
                        child: Row(
                          children: [
                            Icon(
                              Icons.tips_and_updates_outlined,
                              color: theme.primary,
                              size: 24,
                            ),
                            gapW12,
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    l10n.smartSuggestions,
                                    style: theme.titleSmall.copyWith(
                                      color: theme.primary,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    l10n.noBranchesInRadiusShowingNearest,
                                    style: theme.bodySmall.copyWith(
                                      color: theme.grey82,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  gapH16,
                  FeaturedCarousel(featuredClubs: featuredClubs),
                  gapH16,
                  MixClubSection(clubs: mixClubs),
                  MaleClubSection(clubs: maleClubs),
                  FemaleClubSection(clubs: femaleClubs),
                  KidsClubSection(clubs: kidsClubs),
                ],
              ],
            ),
          );
        },
      ),
    );
  }
}
