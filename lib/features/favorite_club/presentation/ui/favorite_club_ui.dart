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
import '../../../resources_club/presentation/widgets/widgets.dart';

class FavoriteClubUi extends ConsumerStatefulWidget {
  const FavoriteClubUi({super.key});

  @override
  ConsumerState<FavoriteClubUi> createState() => _FavoriteClubUiState();
}

class _FavoriteClubUiState extends ConsumerState<FavoriteClubUi> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(filterServiceProvider.notifier).filteredClubList.shuffle();
    });
  }

  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);
    final filterData = ref.watch(filterServiceProvider.notifier);
    return SingleChildScrollView(
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
          AsyncValueWidget(
            value: ref.watch(filterServiceProvider),
            builder: (filteredClubList) {
              return GridView.count(
                shrinkWrap: true,
                crossAxisCount: 2,
                physics: const NeverScrollableScrollPhysics(),
                childAspectRatio: 0.8,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                children: List.generate(
                  filteredClubList?.length ?? 0,
                  (index) => ResourcesClubCard(data: filteredClubList?[index]),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
