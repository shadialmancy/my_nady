import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:my_nady_project/features/home/presentation/widgets/widgets.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../../core/constants/app_sizes.dart';
import '../../../../core/helpers/assets_helper.dart';
import '../../../../core/router/app_router.dart';
import '../../../../core/shared/widgets/widgets.dart';

class ClubBanner extends StatefulWidget {
  const ClubBanner({super.key});

  @override
  State<ClubBanner> createState() => _ClubBannerState();
}

class _ClubBannerState extends State<ClubBanner> {
  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);

    return GestureDetector(
      onTap: () {
        context.router.push(const ClubRoute());
      },
      child: Container(
        width: .infinity,
        margin: .only(left: 3.5.sw, right: 3.5.sw),
        height: 29.sh,
        clipBehavior: .hardEdge,
        decoration: BoxDecoration(
          borderRadius: AppSizes.borderRadius16,
          image: DecorationImage(
            image: AssetImage(AssetsHelper.gymBanner),
            colorFilter: .mode(
              theme.fullBlack.withValues(alpha: 0.7),
              .srcATop,
            ),
            fit: .cover,
          ),
        ),
        child: Stack(
          children: [
            Padding(
              padding: const .all(16.0),
              child: Column(
                crossAxisAlignment: .start,
                children: [
                  Row(
                    mainAxisAlignment: .spaceBetween,
                    crossAxisAlignment: .start,
                    children: [
                      FavoriteButton(),
                      Container(
                        padding: .symmetric(vertical: 2, horizontal: 14),
                        decoration: BoxDecoration(
                          color: theme.blue006,
                          borderRadius: .circular(11),
                        ),
                        child: Text(
                          l10n.male,
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
                    "Oxygen Gym",
                    style: theme.headlineSmall.copyWith(
                      color: theme.white,
                      fontSize: 22,
                      fontWeight: .w500,
                    ),
                  ),
                  gapH12,
                  Text(
                    "It offers advanced equipment and a variety of training programs, including yoga, CrossFit, and bodybuilding.",
                    maxLines: 2,
                    overflow: .ellipsis,
                    style: theme.bodySmall.copyWith(
                      color: theme.white.withValues(alpha: 0.7),
                      fontSize: 12,
                    ),
                  ),
                  gapH16,
                  Align(
                    alignment: .bottomRight,
                    child: CustomButton(
                      shape: RoundedRectangleBorder(borderRadius: .circular(6)),
                      backgroundColor: theme.secondary,
                      titleStyle: theme.titleSmall.copyWith(color: theme.white),
                      height: 35,
                      title: "599,999\$",
                      width: 90,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
