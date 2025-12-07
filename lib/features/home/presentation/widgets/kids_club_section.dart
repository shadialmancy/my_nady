import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../../core/constants/app_sizes.dart';
import '../../../../core/router/app_router.dart';
import 'widgets.dart';

class KidsClubSection extends StatelessWidget {
  const KidsClubSection({super.key});

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
              return GestureDetector(
                onTap: () => context.router.push(const ClubRoute()),
                child: ClubCard(
                  marginLeft: index == 0 ? 3.5.sw : 6,
                  marginRight: index == 3 ? 3.5.sw : 6,
                ),
              );
            }),
          ),
        ),
      ],
    );
  }
}
