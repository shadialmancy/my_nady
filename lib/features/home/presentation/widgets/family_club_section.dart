import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../../core/constants/app_sizes.dart';
import '../../../../features/club/data/models/club_dto/datum.dart';
import 'widgets.dart';

class FamilyClubSection extends StatelessWidget {
  const FamilyClubSection({super.key, required this.clubs});

  final List<Datum> clubs;

  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);

    if (clubs.isEmpty) return const SizedBox.shrink();
    return Stack(
      children: [
        Padding(
          padding: .only(top: 40, bottom: 40, left: 3.5.sw, right: 3.5.sw),
          child: Column(
            children: List.generate(clubs.length, (index) {
              return FamilyClubCard(club: clubs[index]);
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
