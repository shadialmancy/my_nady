import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:my_nady_project/core/shared/widgets/widgets.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../../core/constants/app_sizes.dart';
import '../../../club/presentation/provider/map_location_service.dart';
import '../../../filter/presentation/provider/filter_service.dart';
import '../widgets/widgets.dart';

import '../provider/home_ui_service.dart';

import '../provider/home_search_provider.dart';

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
      // Logic from before
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
        loading: () => const _HomeLoadingShimmer(),
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
                      ).animate().fadeIn().scale(begin: const Offset(0.9, 0.9)),
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
                  if (mixClubs.isNotEmpty) MixClubSection(clubs: mixClubs),
                  if (maleClubs.isNotEmpty) MaleClubSection(clubs: maleClubs),
                  if (femaleClubs.isNotEmpty) FemaleClubSection(clubs: femaleClubs),
                  if (kidsClubs.isNotEmpty) KidsClubSection(clubs: kidsClubs),
                ].animate(interval: 100.ms).fadeIn(duration: 500.ms).slideY(begin: 0.05, curve: Curves.easeOutQuad),
              ],
            ),
          );
        },
      ),
    );
  }
}

class _HomeLoadingShimmer extends StatelessWidget {
  const _HomeLoadingShimmer();

  @override
  Widget build(BuildContext context) {
    final theme = appSettingsRecord(context).$1;
    final shimmerColor = theme.grey9C.withValues(alpha: 0.3);
    final highlightColor = theme.white.withValues(alpha: 0.6);

    return SingleChildScrollView(
      physics: const NeverScrollableScrollPhysics(),
      padding: .only(top: 6.sh, bottom: 14.sh),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const AppBarWithSearchTextField(),
          gapH16,
          // Featured carousel shimmer
          Padding(
                padding: EdgeInsets.symmetric(horizontal: 4.sw),
                child: Container(
                  height: 180,
                  decoration: BoxDecoration(
                    color: shimmerColor,
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
              )
              .animate(onPlay: (controller) => controller.repeat())
              .shimmer(duration: 1500.ms, color: highlightColor),

          gapH24,

          // Section shimmers
          ...List.generate(
                3,
                (index) => Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 4.sw),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 120,
                            height: 24,
                            decoration: BoxDecoration(
                              color: shimmerColor,
                              borderRadius: BorderRadius.circular(4),
                            ),
                          ),
                          Container(
                            width: 60,
                            height: 16,
                            decoration: BoxDecoration(
                              color: shimmerColor,
                              borderRadius: BorderRadius.circular(4),
                            ),
                          ),
                        ],
                      ),
                    ),
                    gapH12,
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      padding: EdgeInsets.symmetric(horizontal: 4.sw),
                      child: Row(
                        children: List.generate(
                          3,
                          (index) => Padding(
                            padding: const EdgeInsets.only(right: 12),
                            child: Container(
                              width: 140,
                              height: 160,
                              decoration: BoxDecoration(
                                color: shimmerColor,
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    gapH24,
                  ],
                ),
              )
              .animate(
                interval: 200.ms,
                onPlay: (controller) => controller.repeat(),
              )
              .shimmer(duration: 1500.ms, color: highlightColor),
        ],
      ),
    );
  }
}
