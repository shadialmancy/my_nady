import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:my_nady_project/features/club/data/models/club_dto/datum.dart';
import 'package:my_nady_project/features/home/presentation/widgets/widgets.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../../core/constants/app_sizes.dart';
import '../../../../core/helpers/assets_helper.dart';
import '../../../../core/router/app_router.dart';

class ClubBanner extends StatelessWidget {
  final Datum club;
  const ClubBanner({required this.club, super.key});

  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);

    final imageUrl =
        club.logo ?? (club.photos?.isNotEmpty == true ? club.photos![0] : '');

    return GestureDetector(
      onTap: () {
        context.router.push(
          ClubRoute(
            id: club.id ?? "",
            distance: club.distance?.toString() ?? "",
          ),
        );
      },
      child: Container(
        width: .infinity,
        margin: .only(left: 3.5.sw, right: 3.5.sw),
        height: 29.sh,
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(borderRadius: AppSizes.borderRadius16),
        child: Stack(
          children: [
            CachedNetworkImage(
              imageUrl: imageUrl,
              width: double.infinity,
              height: double.infinity,
              memCacheWidth: 1200,
              fit: BoxFit.cover,
              color: theme.fullBlack.withValues(alpha: 0.7),
              colorBlendMode: BlendMode.srcATop,
              fadeInDuration: Duration.zero,
              useOldImageOnUrlChange: true,
              errorWidget: (context, url, error) => Image.asset(
                AssetsHelper.gymBanner,
                width: double.infinity,
                height: double.infinity,
                fit: BoxFit.cover,
                color: theme.fullBlack.withValues(alpha: 0.7),
                colorBlendMode: BlendMode.srcATop,
              ),
            ),
            Padding(
              padding: const .all(16.0),
              child: Column(
                crossAxisAlignment: .start,
                children: [
                  Row(
                    mainAxisAlignment: .spaceBetween,
                    crossAxisAlignment: .start,
                    children: [
                      FavoriteButton(
                        clubId: club.id,
                        initialIsFavorite: club.isFavorite ?? false,
                      ),
                      Container(
                        padding: .symmetric(vertical: 2, horizontal: 14),
                        decoration: BoxDecoration(
                          color: theme.blue006,
                          borderRadius: .circular(11),
                        ),
                        child: Text(
                          club.genderType ?? l10n.male,
                          style: theme.bodySmall.copyWith(
                            color: theme.white,
                            fontWeight: .bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  gapH16,
                  Text(
                    club.name ?? "Club Name",
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: theme.headlineSmall.copyWith(
                      color: theme.white,
                      fontSize: 22,
                      fontWeight: .w500,
                    ),
                  ),
                  gapH12,
                  Text(
                    (club.description?.length ?? 0) > 50
                        ? "${club.description?.substring(0, 50)}..."
                        : club.description ?? "",
                    maxLines: 2,
                    overflow: .ellipsis,
                    style: theme.bodySmall.copyWith(
                      color: theme.white.withValues(alpha: 0.7),
                      fontSize: 12,
                    ),
                  ),
                  const Spacer(),
                  // Align(
                  //   alignment: .bottomRight,
                  //   child: CustomButton(
                  //     shape: RoundedRectangleBorder(borderRadius: .circular(6)),
                  //     backgroundColor: theme.secondary,
                  //     titleStyle: theme.titleSmall.copyWith(color: theme.white),
                  //     height: 35,
                  //     title: "${club.minPlanPrice ?? 0}\$",
                  //     width: 90,
                  //   ),
                  // ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
