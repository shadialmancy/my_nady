import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_nady_project/features/club/data/models/club_dto/datum.dart';

import '../../../../core/constants/app_sizes.dart';
import '../../../../core/helpers/assets_helper.dart';
import 'widgets.dart';

class ClubCard extends StatelessWidget {
  const ClubCard({
    this.marginLeft = 6,
    this.marginRight = 6,
    this.marginTop = 40,
    this.marginBottom = 25,
    this.club,
    super.key,
  });
  final double marginRight;
  final double marginLeft;
  final double marginTop;
  final double marginBottom;
  final Datum? club;

  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);
    final size = MediaQuery.sizeOf(context);
    return Container(
      clipBehavior: Clip.none,
      width: (size.width - 20) / 2,
      // height: 150,
      margin: .only(
        top: marginTop,
        right: marginRight,
        left: marginLeft,
        bottom: marginBottom,
      ),
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
                child: Image.network(
                  club?.logo ?? '',
                  height: 120,
                  color: theme.fullBlack.withValues(alpha: 0.55),
                  colorBlendMode: .srcATop,
                  width: .infinity,
                  fit: .cover,
                  errorBuilder: (context, error, stackTrace) => Image.asset(
                    AssetsHelper.gymBanner,
                    height: 120,
                    color: theme.fullBlack.withValues(alpha: 0.55),
                    colorBlendMode: .srcATop,
                    width: .infinity,
                    fit: .cover,
                  ),
                ),
              ),
              Padding(
                padding: const .all(10),
                child: Row(
                  mainAxisAlignment: .spaceBetween,
                  children: [
                    FavoriteButton(),
                    if (club?.minPlanPrice != null)
                      Container(
                        padding: .symmetric(vertical: 2, horizontal: 8),
                        decoration: BoxDecoration(
                          color: theme.secondary,
                          borderRadius: .circular(6),
                        ),
                        child: Text(
                          "${club?.minPlanPrice}%", // Assuming this is discount? Or just showing price? logic unclear from provided code, sticking to existing style
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
            (club?.name?.length ?? 0) > 17
                ? "${club?.name?.substring(0, 17)}..."
                : club?.name ?? "Club Name",
            style: theme.titleMedium.copyWith(
              fontWeight: .w400,
              color: theme.primary,
            ),
          ),
          Row(
            children: [
              SvgPicture.asset(AssetsHelper.locationIcon),
              gapW4,
              Expanded(
                child: Text(
                  club?.location?.address ?? "Address",
                  overflow: TextOverflow.ellipsis,
                  style: theme.labelMedium.copyWith(
                    fontSize: 12,
                    color: theme.grey87,
                    fontWeight: .normal,
                  ),
                ),
              ),
            ],
          ),
          gapH12,
          Row(
            mainAxisAlignment: .spaceBetween,
            children: [
              Text(
                "${club?.minPlanPrice ?? 0}\$",
                style: theme.bodyMediumSecondary.copyWith(
                  color: theme.secondary,
                ),
              ),
              Row(
                children: [
                  Icon(Icons.star, size: 14, color: theme.yellowEA),
                  gapW4,
                  Text(
                    "4.5", // Rating not in Datum currently?
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
