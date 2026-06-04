import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:my_nady_project/core/helpers/assets_helper.dart';
import 'package:my_nady_project/core/shared/widgets/widgets.dart';
import 'package:responsive_builder/responsive_builder.dart';
import '../../../../core/constants/app_sizes.dart';
import '../../../home/presentation/widgets/widgets.dart';
import '../../../home/presentation/provider/home_ui_service.dart';
import '../provider/favorite_clubs_ui_service.dart';

class FavoriteClubUi extends ConsumerStatefulWidget {
  const FavoriteClubUi({super.key});

  @override
  ConsumerState<FavoriteClubUi> createState() => _FavoriteClubUiState();
}

class _FavoriteClubUiState extends ConsumerState<FavoriteClubUi> {
  TextEditingController searchController = TextEditingController();
  String searchQuery = '';

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      ref.read(favoriteClubsUiServiceProvider.notifier).fetchFavoriteClubs();
    });
  }

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);
    final favoriteClubsService = ref.watch(
      favoriteClubsUiServiceProvider.notifier,
    );

    return RefreshIndicator(
      onRefresh: () => favoriteClubsService.fetchFavoriteClubs(),
      child: SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        padding: .only(top: 6.sh, bottom: 16.sh, left: 3.sw, right: 3.sw),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: .spaceBetween,
              children: [
                Text(
                  l10n.favorite,
                  style: theme.headlineSmall.copyWith(color: theme.primary),
                ),
                const GymViewLayoutToggle(),
              ],
            ),
            gapH16,
            CustomTextField(
              controller: searchController,
              hint: l10n.searchForGym,
              prefix: Padding(
                padding: const EdgeInsets.only(right: 8),
                child: SvgPicture.asset(AssetsHelper.searchIcon, width: 16),
              ),
              onChanged: (value) {
                setState(() {
                  searchQuery = value ?? '';
                });
              },
            ),
            gapH16,
            AsyncValueWidget(
              value: ref.watch(favoriteClubsUiServiceProvider),
              loading: () => const _FavoriteLoadingShimmer(),
              builder: (clubEntity) {
                final allClubs = clubEntity?.clubs ?? [];
                final clubs = allClubs
                    .where(
                      (club) => (club.name ?? '').toLowerCase().contains(
                        searchQuery.toLowerCase(),
                      ),
                    )
                    .toList();

                if (clubs.isEmpty) {
                  return Padding(
                    padding: .only(top: 10.sh),
                    child: Center(
                      child: Text(
                        searchQuery.isEmpty
                            ? l10n.noFavorites
                            : l10n.noBranchNearBy,
                        style: theme.titleLarge.copyWith(
                          color: theme.primary,
                          fontWeight: .bold,
                        ),
                      ).animate().fadeIn().scale(begin: const Offset(0.9, 0.9)),
                    ),
                  );
                }

                return ClubCollectionView(
                  clubs: clubs,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  isFavorite: true,
                  onRemovedFromFavorites: (clubId) {
                    favoriteClubsService.removeFavoriteOptimistic(clubId);
                    ref
                        .read(homeUiServiceProvider.notifier)
                        .updateClubFavoriteStatus(clubId, false);
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class _FavoriteLoadingShimmer extends StatelessWidget {
  const _FavoriteLoadingShimmer();

  @override
  Widget build(BuildContext context) {
    final theme = appSettingsRecord(context).$1;
    final shimmerColor = theme.grey9C.withValues(alpha: 0.3);
    final highlightColor = theme.white.withValues(alpha: 0.6);

    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.75,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      itemCount: 6,
      itemBuilder: (context, index) {
        return Container(
              decoration: BoxDecoration(
                color: shimmerColor,
                borderRadius: BorderRadius.circular(16),
              ),
            )
            .animate(
              delay: (index * 100).ms,
              onPlay: (controller) => controller.repeat(),
            )
            .shimmer(duration: 1500.ms, color: highlightColor);
      },
    );
  }
}
