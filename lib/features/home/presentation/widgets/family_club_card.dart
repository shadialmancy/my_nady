import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/constants/app_sizes.dart';
import '../../../../core/helpers/assets_helper.dart';
import 'widgets.dart';

class FamilyClubCard extends StatelessWidget {
  const FamilyClubCard({super.key});

  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);
    return Container(
      clipBehavior: .none,
      width: .infinity,
      height: 130,
      margin: .only(bottom: 12),
      padding: .symmetric(horizontal: 10, vertical: 8),
      decoration: BoxDecoration(
        color: theme.white,
        borderRadius: .circular(12),
        boxShadow: [
          BoxShadow(
            color: theme.fullBlack.withValues(alpha: 0.25),
            blurRadius: 26,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: .start,
        crossAxisAlignment: .start,
        children: [
          SizedBox(
            width: 130,
            child: Stack(
              children: [
                ClipRRect(
                  borderRadius: .circular(6),
                  child: Image.asset(
                    AssetsHelper.gymBanner,
                    height: .infinity,
                    fit: .cover,
                  ),
                ),
                Padding(
                  padding: const .symmetric(horizontal: 7.0, vertical: 5),
                  child: Row(
                    mainAxisAlignment: .spaceBetween,
                    children: [
                      FavoriteButton(),
                      Container(
                        padding: const .symmetric(vertical: 2, horizontal: 8),
                        decoration: BoxDecoration(
                          color: theme.secondary,
                          borderRadius: .circular(6),
                        ),
                        child: Text(
                          "30%",
                          style: theme.labelMedium.copyWith(
                            color: theme.white,
                            fontWeight: .w600,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          gapW12,
          Expanded(
            child: Column(
              mainAxisAlignment: .start,
              crossAxisAlignment: .start,
              children: [
                Text(
                  "Iron Man Gym",
                  style: theme.titleMedium.copyWith(
                    fontWeight: .w400,
                    color: theme.primary,
                  ),
                ),
                Row(
                  children: [
                    SvgPicture.asset(AssetsHelper.locationIcon),
                    gapW4,
                    Text(
                      "30k. Khaitan and Salmiya.".length > 27
                          ? "${"30k. Khaitan and Salmiya.".substring(0, 27)}..."
                          : "30k. Khaitan and Salmiya.",
                      style: theme.labelMedium.copyWith(
                        fontSize: 14,
                        color: theme.grey87,
                        fontWeight: .normal,
                      ),
                    ),
                  ],
                ),
                Text(
                  "A clean and modern gym with everything you need to stay fit. Train your way with top equipment and a motivating space",
                  style: theme.bodySmall.copyWith(
                    color: theme.grey87,
                    fontSize: 10,
                  ),
                  maxLines: 3,
                  overflow: .ellipsis,
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: .end,
                    children: [
                      Icon(Icons.star, size: 14, color: theme.yellowEA),
                      gapW4,
                      Text(
                        "4.9k",
                        style: theme.bodySmall.copyWith(
                          color: theme.grey87,
                          fontSize: 12,
                        ),
                      ),
                    ],
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
