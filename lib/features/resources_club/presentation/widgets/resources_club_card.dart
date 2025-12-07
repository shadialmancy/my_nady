import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/constants/app_sizes.dart';
import '../../../../core/helpers/assets_helper.dart';
import '../../../home/presentation/widgets/widgets.dart';

class ResourcesClubCard extends StatelessWidget {
  const ResourcesClubCard({
    this.marginLeft = 6,
    this.marginRight = 6,
    required this.data,
    super.key,
  });
  final double marginRight;
  final double marginLeft;
  final Map<String, dynamic> data;
  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);
    final size = MediaQuery.sizeOf(context);
    return Container(
      clipBehavior: Clip.none,
      width: (size.width - 20) / 2,
      // height: 150,
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
                    Container(
                      padding: .symmetric(vertical: 2, horizontal: 8),
                      decoration: BoxDecoration(
                        color:
                            (data["category"].toString().toLowerCase() ==
                                "kids")
                            ? theme.green12
                            : (data["category"].toString().toLowerCase() ==
                                  "male")
                            ? theme.blue006
                            : (data["category"].toString().toLowerCase() ==
                                  "female")
                            ? theme.purpleCA
                            : theme.blue03,
                        borderRadius: .circular(6),
                      ),
                      child: Text(
                        data["category"],
                        style: theme.labelMedium.copyWith(
                          color: theme.white,
                          fontWeight: .w600,
                        ),
                      ),
                    ),
                    FavoriteButton(),
                  ],
                ),
              ),
            ],
          ),
          gapH12,
          Row(
            mainAxisAlignment: .spaceBetween,
            children: [
              Text(
                "${data["title"].toString().length > 10 ? "${data["title"].toString().substring(0, 10)}..." : data["title"]}",
                style: theme.titleMedium.copyWith(
                  fontWeight: .w400,
                  color: theme.primary,
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
              Text(
                "600,000",
                style: theme.bodyMediumSecondary.copyWith(
                  decoration: .lineThrough,
                  decorationColor: theme.grey87,
                  decorationThickness: 2,
                  color: theme.grey87,
                  fontWeight: .normal,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
