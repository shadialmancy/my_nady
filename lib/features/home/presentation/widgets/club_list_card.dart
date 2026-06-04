import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_nady_project/features/club/data/models/club_dto/datum.dart';

import '../../../../core/constants/app_sizes.dart';
import '../../../../core/helpers/assets_helper.dart';
import '../../../../core/router/app_router.dart';
import 'widgets.dart';

class ClubListCard extends StatelessWidget {
  const ClubListCard({
    super.key,
    this.club,
    this.isFavorite = false,
    this.onRemovedFromFavorites,
    this.onTap,
  });

  final Datum? club;
  final bool isFavorite;
  final VoidCallback? onRemovedFromFavorites;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);

    final maxDiscount = club?.offers?.isEmpty ?? true
        ? 0
        : club!.offers!
              .map((e) => e.discountValue ?? 0)
              .reduce((a, b) => a > b ? a : b);

    return GestureDetector(
      onTap: onTap ??
          () {
            context.router.push(
              ClubRoute(
                id: club?.id ?? '',
                distance: club?.distance?.toString() ?? '',
              ),
            );
          },
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 6, horizontal: 4),
        decoration: BoxDecoration(
          color: theme.white,
          borderRadius: BorderRadius.circular(14),
          boxShadow: [
            BoxShadow(
              color: theme.fullBlack.withValues(alpha: 0.10),
              blurRadius: 16,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Row(
          children: [
            // Image
            ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(14),
                bottomLeft: Radius.circular(14),
              ),
              child: Stack(
                children: [
                  CachedNetworkImage(
                    imageUrl: club?.logo ?? '',
                    width: 110,
                    height: 110,
                    fit: BoxFit.cover,
                    color: theme.fullBlack.withValues(alpha: 0.45),
                    colorBlendMode: BlendMode.srcATop,
                    placeholder: (context, url) => Container(
                      width: 110,
                      height: 110,
                      color: theme.grey87.withValues(alpha: 0.1),
                      child: const Center(child: CircularProgressIndicator()),
                    ),
                    errorWidget: (context, url, error) => Image.asset(
                      AssetsHelper.gymBanner,
                      width: 110,
                      height: 110,
                      fit: BoxFit.cover,
                      color: theme.fullBlack.withValues(alpha: 0.45),
                      colorBlendMode: BlendMode.srcATop,
                    ),
                  ),
                  if (maxDiscount > 0)
                    Positioned(
                      top: 8,
                      left: 8,
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          vertical: 2,
                          horizontal: 7,
                        ),
                        decoration: BoxDecoration(
                          color: theme.secondary,
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: Text(
                          '$maxDiscount%',
                          style: theme.labelMedium.copyWith(
                            color: theme.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 11,
                          ),
                        ),
                      ),
                    ),
                ],
              ),
            ),
            // Info
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 12,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            club?.name ?? 'Club Name',
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: theme.titleMedium.copyWith(
                              fontWeight: FontWeight.w600,
                              color: theme.primary,
                              fontSize: 15,
                            ),
                          ),
                        ),
                        FavoriteButton(
                          clubId: club?.id,
                          initialIsFavorite: isFavorite,
                          onRemoved: onRemovedFromFavorites,
                        ),
                      ],
                    ),
                    gapH4,
                    Row(
                      children: [
                        SvgPicture.asset(AssetsHelper.locationIcon, width: 12),
                        gapW4,
                        Expanded(
                          child: Text(
                            club?.location?.address ?? 'Address',
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: theme.labelMedium.copyWith(
                              fontSize: 11,
                              color: theme.grey87,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ),
                      ],
                    ),
                    gapH8,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              size: 13,
                              color: theme.yellowEA,
                            ),
                            gapW4,
                            Text(
                              (club?.rating ?? 4.5).toStringAsFixed(1),
                              style: theme.labelMedium.copyWith(
                                fontWeight: FontWeight.w400,
                                color: theme.grey87,
                                fontSize: 11,
                              ),
                            ),
                          ],
                        ),
                        if (club?.genderType != null)
                          Container(
                            padding: const EdgeInsets.symmetric(
                              vertical: 2,
                              horizontal: 8,
                            ),
                            decoration: BoxDecoration(
                              color: theme.primary.withValues(alpha: 0.1),
                              borderRadius: BorderRadius.circular(6),
                            ),
                            child: Text(
                              club!.genderType!,
                              style: theme.labelMedium.copyWith(
                                color: theme.primary,
                                fontWeight: FontWeight.w600,
                                fontSize: 10,
                              ),
                            ),
                          ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
