import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../../core/constants/app_sizes.dart';
import '../../../../core/router/app_router.dart';
import '../../../../features/club/data/models/club_dto/datum.dart';
import 'widgets.dart';

class FemaleClubSection extends StatelessWidget {
  const FemaleClubSection({super.key, required this.clubs});

  final List<Datum> clubs;

  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);

    if (clubs.isEmpty) return const SizedBox.shrink();
    return Stack(
      children: [
        SingleChildScrollView(
          scrollDirection: .horizontal,
          child: Row(
            children: List.generate(clubs.length > 5 ? 5 : clubs.length, (
              index,
            ) {
              return GestureDetector(
                onTap: () => context.router.push(
                  ClubRoute(
                    id: clubs[index].id ?? '',
                    distance: clubs[index].distance?.toString() ?? '',
                  ),
                ),
                child: ClubCard(
                  marginLeft: index == 0 ? 3.5.sw : 6,
                  isFavorite: clubs[index].isFavorite ?? false,
                  marginRight: index == clubs.length - 1 ? 3.5.sw : 6,
                  club: clubs[index],
                ),
              );
            }),
          ),
        ),
        Positioned(
          top: 0,
          left: 0,
          right: 0,
          child: Padding(
            padding: .symmetric(horizontal: 3.5.sw),
            child: TitleWithSeeall(
              title: l10n.female,
              onPress: () {
                context.router.push(SeeAllRoute(clubs: clubs));
              },
            ),
          ),
        ),
      ],
    );
  }
}
