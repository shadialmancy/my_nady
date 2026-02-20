import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_nady_project/core/helpers/assets_helper.dart';
import 'package:my_nady_project/core/shared/widgets/widgets.dart';
import 'package:responsive_builder/responsive_builder.dart';
import '../../../../core/constants/app_sizes.dart';
import '../../../../core/router/app_router.dart';
import '../../../filter/presentation/provider/filter_service.dart';
import '../../../home/presentation/widgets/widgets.dart';
import '../../../home/presentation/provider/home_ui_service.dart';
import '../provider/favorite_clubs_ui_service.dart';

class FavoriteClubUi extends ConsumerStatefulWidget {
  const FavoriteClubUi({super.key});

  @override
  ConsumerState<FavoriteClubUi> createState() => _FavoriteClubUiState();
}

class _FavoriteClubUiState extends ConsumerState<FavoriteClubUi> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      ref.read(favoriteClubsUiServiceProvider.notifier).fetchFavoriteClubs();
    });
  }

  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);
    final filterData = ref.watch(filterServiceProvider.notifier);
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
                GestureDetector(
                  onTap: () async {
                    context.router.push(const FilterRoute());
                  },
                  child: Container(
                    padding: const .symmetric(vertical: 6, horizontal: 6),
                    decoration: BoxDecoration(
                      borderRadius: .circular(10),
                      border: Border.all(color: theme.primary),
                      color: filterData.hasActiveFilters ? theme.primary : null,
                    ),
                    child: Row(
                      children: [
                        SvgPicture.asset(
                          AssetsHelper.filterIcon,
                          colorFilter: filterData.hasActiveFilters
                              ? ColorFilter.mode(theme.white, BlendMode.srcIn)
                              : null,
                        ),
                        gapW4,
                        Text(
                          l10n.filter,
                          style: theme.labelSmall.copyWith(
                            color: filterData.hasActiveFilters
                                ? theme.white
                                : theme.primary,
                            fontWeight: .w700,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            gapH16,
            AsyncValueWidget(
              value: ref.watch(favoriteClubsUiServiceProvider),
              builder: (clubEntity) {
                final clubs = clubEntity?.clubs ?? [];

                if (clubs.isEmpty) {
                  return Padding(
                    padding: .only(top: 20.sh),
                    child: Center(
                      child: Text(
                        l10n.noFavorites,
                        style: theme.titleLarge.copyWith(
                          color: theme.primary,
                          fontWeight: .bold,
                        ),
                      ),
                    ),
                  );
                }

                return GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 0.75,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                  ),
                  itemCount: clubs.length,
                  itemBuilder: (context, index) {
                    final club = clubs[index];
                    return GestureDetector(
                      onTap: () {
                        context.router.push(
                          ClubRoute(
                            id: club.id ?? '',
                            distance: club.distance?.toString() ?? '',
                          ),
                        );
                      },
                      child: ClubCard(
                        club: club,
                        marginBottom: 10,
                        marginTop: 0,
                        marginLeft: 6,
                        marginRight: 6,
                        isFavorite: true,
                        onRemovedFromFavorites: club.id != null
                            ? () {
                                favoriteClubsService.removeFavoriteOptimistic(
                                  club.id!,
                                );
                                ref
                                    .read(homeUiServiceProvider.notifier)
                                    .updateClubFavoriteStatus(club.id!, false);
                              }
                            : null,
                      ),
                    );
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
