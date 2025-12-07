import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/constants/app_sizes.dart';
import '../../../../core/helpers/assets_helper.dart';
import 'widgets.dart';

class ClubCard extends StatelessWidget {
  const ClubCard({this.marginLeft = 6, this.marginRight = 6, super.key});
  final double marginRight;
  final double marginLeft;
  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);
    final size = MediaQuery.sizeOf(context);
    return Container(
      clipBehavior: Clip.none,
      width: (size.width - 20) / 2,
      // height: 150,
      margin: .only(top: 40, right: marginRight, left: marginLeft, bottom: 25),
      padding: .symmetric(horizontal: 6, vertical: 10),
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
      child: Column(
        crossAxisAlignment: .start,
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: .circular(6),
                child: Image.asset(
                  AssetsHelper.gymBanner,
                  height: 120,
                  color: theme.fullBlack.withValues(alpha: 0.55),
                  colorBlendMode: .srcATop,
                  width: .infinity,
                  fit: .cover,
                ),
              ),
              Padding(
                padding: const .all(10),
                child: Row(
                  mainAxisAlignment: .spaceBetween,
                  children: [
                    FavoriteButton(),
                    Container(
                      padding: .symmetric(vertical: 2, horizontal: 8),
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
          gapH12,
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
                  fontSize: 12,
                  color: theme.grey87,
                  fontWeight: .normal,
                ),
              ),
            ],
          ),
          gapH12,
          Row(
            mainAxisAlignment: .spaceBetween,
            children: [
              Text(
                "20%",
                style: theme.bodyMediumSecondary.copyWith(
                  color: theme.secondary,
                ),
              ),
              Row(
                children: [
                  Icon(Icons.star, size: 14, color: theme.yellowEA),
                  gapW4,
                  Text(
                    "4.99k",
                    style: theme.labelMedium.copyWith(
                      fontWeight: .w400,
                      color: theme.grey87,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
