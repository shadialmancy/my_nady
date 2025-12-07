import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_nady_project/core/helpers/assets_helper.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../../core/constants/app_sizes.dart';
import '../../../resources_club/presentation/widgets/widgets.dart';

class FavoriteClubUi extends StatefulWidget {
  const FavoriteClubUi({super.key});

  @override
  State<FavoriteClubUi> createState() => _FavoriteClubUiState();
}

class _FavoriteClubUiState extends State<FavoriteClubUi> {
  @override
  void initState() {
    super.initState();
    clubList.shuffle();
  }

  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);

    return SingleChildScrollView(
      padding: .only(top: 6.sh, bottom: 16.sh, left: 3.sw, right: 3.sw),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: .spaceBetween,

            children: [
              Text(
                l10n.resources,
                style: theme.headlineSmall.copyWith(color: theme.primary),
              ),
              Container(
                padding: const .symmetric(vertical: 6, horizontal: 6),
                decoration: BoxDecoration(
                  borderRadius: .circular(10),
                  border: Border.all(color: theme.primary),
                ),
                child: Row(
                  children: [
                    SvgPicture.asset(AssetsHelper.filterIcon),
                    gapW4,
                    Text(
                      l10n.filter,
                      style: theme.labelSmall.copyWith(
                        color: theme.primary,
                        fontWeight: .w700,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          GridView.count(
            shrinkWrap: true,
            crossAxisCount: 2,
            physics: const NeverScrollableScrollPhysics(),
            childAspectRatio: 0.8,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            children: List.generate(
              clubList.length,
              (index) => ResourcesClubCard(data: clubList[index]),
            ),
          ),
        ],
      ),
    );
  }
}
