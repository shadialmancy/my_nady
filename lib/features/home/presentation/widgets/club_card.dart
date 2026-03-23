import 'package:cached_network_image/cached_network_image.dart';
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
    this.isFavorite = false,
    this.onRemovedFromFavorites,
    super.key,
  });
  final double marginRight;
  final double marginLeft;
  final double marginTop;
  final double marginBottom;
  final Datum? club;
  final bool isFavorite;
  final VoidCallback? onRemovedFromFavorites;

  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);
    final size = MediaQuery.sizeOf(context);
    final maxDiscount = club?.offers?.isEmpty ?? true
        ? 0
        : club!.offers!
              .map((e) => e.discountValue ?? 0)
              .reduce((a, b) => a > b ? a : b);
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
                child: CachedNetworkImage(
                  imageUrl: club?.logo ?? '',
                  height: 120,
                  color: theme.fullBlack.withValues(alpha: 0.55),
                  colorBlendMode: .srcATop,
                  width: .infinity,
                  fit: .cover,
                  placeholder: (context, url) => Container(
                    height: 120,
                    width: .infinity,
                    color: theme.grey87.withValues(alpha: 0.1),
                    child: const Center(child: CircularProgressIndicator()),
                  ),
                  errorWidget: (context, url, error) => Image.asset(
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
                    FavoriteButton(
                      clubId: club?.id,
                      initialIsFavorite: isFavorite,
                      onRemoved: onRemovedFromFavorites,
                    ),
                    if (maxDiscount > 0)
                      Container(
                        padding: .symmetric(vertical: 2, horizontal: 8),
                        decoration: BoxDecoration(
                          color: theme.secondary,
                          borderRadius: .circular(6),
                        ),
                        child: Text(
                          "$maxDiscount%",
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
            club?.name ?? "Club Name",
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
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
