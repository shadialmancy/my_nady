import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_nady_project/core/helpers/assets_helper.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../../core/constants/app_sizes.dart';

class CategorySection extends StatelessWidget {
  const CategorySection({
    super.key,
    this.backgroundColor,
    this.enableOpacity = false,
  });
  final Color? backgroundColor;
  final bool enableOpacity;
  final List<Map<String, dynamic>> categoryIcons = const [
    {'icon': AssetsHelper.dumbBellIcon, 'title': 'Gym', "isSelected": false},
    {'icon': AssetsHelper.yogaIcon, 'title': 'Yogo', "isSelected": false},
    {
      'icon': AssetsHelper.footballIcon,
      'title': 'Football',
      "isSelected": false,
    },
    {
      'icon': AssetsHelper.heartCardiogramIcon,
      'title': 'Cardio',
      "isSelected": false,
    },
    {
      'icon': AssetsHelper.swimmingIcon,
      'title': 'Swimming',
      "isSelected": false,
    },
  ];

  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);
    return Padding(
      padding: .only(left: 3.5.sw, right: 3.5.sw),
      child: Row(
        mainAxisAlignment: .spaceBetween,
        children: [
          for (final category in categoryIcons)
            Column(
              children: [
                Opacity(
                  opacity: enableOpacity
                      ? category["isSelected"]
                            ? 1
                            : 0.5
                      : 1,
                  child: CircleAvatar(
                    radius: 22,
                    backgroundColor: backgroundColor ?? theme.black1E,
                    child: Padding(
                      padding: const .all(8),
                      child: SvgPicture.asset(category["icon"]),
                    ),
                  ),
                ),
                Text(
                  category["title"],
                  style: theme.bodySmall.copyWith(color: theme.black1E),
                ),
              ],
            ),
        ],
      ),
    );
  }
}
