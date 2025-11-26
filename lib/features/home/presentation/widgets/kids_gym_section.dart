import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../../core/constants/app_sizes.dart';
import 'widgets.dart';

class KidsGymSection extends StatelessWidget {
  const KidsGymSection({super.key});

  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);
    return Stack(
      children: [
        Padding(
          padding: .symmetric(horizontal: 3.5.sw),
          child: TitleWithSeeall(title: l10n.kids, onPress: () {}),
        ),
        SingleChildScrollView(
          scrollDirection: .horizontal,
          child: Row(
            children: List.generate(4, (index) {
              return GymCard(
                marginLeft: index == 0 ? 3.5.sw : 6,
                marginRight: index == 3 ? 3.5.sw : 6,
              );
            }),
          ),
        ),
      ],
    );
  }
}
