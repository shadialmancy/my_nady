import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../../core/constants/app_sizes.dart';
import 'widgets.dart';

class FamilyGymSection extends StatelessWidget {
  const FamilyGymSection({super.key});

  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);
    return Stack(
      children: [
        Padding(
          padding: .only(top: 40, bottom: 40, left: 3.5.sw, right: 3.5.sw),
          child: Column(
            children: List.generate(4, (index) {
              return FamilyGymCard();
            }),
          ),
        ),
        Padding(
          padding: .symmetric(horizontal: 3.5.sw),
          child: TitleWithSeeall(title: l10n.family, onPress: () {}),
        ),
      ],
    );
  }
}
