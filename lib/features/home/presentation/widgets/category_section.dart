import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_nady_project/core/helpers/assets_helper.dart';
import 'package:my_nady_project/features/home/presentation/widgets/widgets.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../../core/constants/app_sizes.dart';

class CategorySection extends StatelessWidget {
  const CategorySection({super.key});

  final List<Map<String, dynamic>> categoryIcons = const [
    {'icon': AssetsHelper.dumbBellIcon, 'title': 'Gym'},
    {'icon': AssetsHelper.yogaIcon, 'title': 'Yogo'},
    {'icon': AssetsHelper.footballIcon, 'title': 'Football'},
    {'icon': AssetsHelper.heartCardiogramIcon, 'title': 'Cardio'},
    {'icon': AssetsHelper.swimmingIcon, 'title': 'Swimming'},
  ];

  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);
    return Padding(
      padding: .only(left: 3.5.sw, right: 3.5.sw),
      child: Column(
        children: [
          TitleWithSeeall(title: l10n.categories, onPress: null),
          gapH12,
          Row(
            mainAxisAlignment: .spaceBetween,
            children: [
              for (final category in categoryIcons)
                Column(
                  children: [
                    CircleAvatar(
                      radius: 22,
                      backgroundColor: theme.black1E,
                      child: Padding(
                        padding: const .all(8),
                        child: SvgPicture.asset(category["icon"]),
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
        ],
      ),
    );
  }
}
