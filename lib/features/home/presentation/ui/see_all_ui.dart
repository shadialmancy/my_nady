import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import '../../../../core/constants/app_sizes.dart';
import '../../../../core/router/app_router.dart';
import 'package:my_nady_project/features/club/data/models/club_dto/datum.dart';
import '../widgets/widgets.dart';

class SeeAllUi extends StatelessWidget {
  const SeeAllUi({super.key, required this.clubs});

  final List<Datum> clubs;

  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);

    return Column(
      children: [
        gapH48,
        Padding(
          padding: .symmetric(horizontal: 3.5.sw),
          child: Row(
            children: [
              IconButton(
                onPressed: () => context.router.maybePop(),
                icon: const Icon(Icons.arrow_back_ios),
              ),
              gapW8,
              Text(
                l10n.categories, // Or some other relevant title
                style: theme.titleLarge.copyWith(fontWeight: .bold),
              ),
            ],
          ),
        ),
        Expanded(
          child: GridView.builder(
            padding: EdgeInsets.symmetric(horizontal: 1.sw),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 0.8,
              crossAxisSpacing: 0,
              mainAxisSpacing: 0,
            ),
            itemCount: clubs.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  context.router.push(
                    ClubRoute(
                      id: clubs[index].id ?? '',
                      distance: clubs[index].distance?.toString() ?? '',
                    ),
                  );
                },
                child: ClubCard(
                  club: clubs[index],
                  marginBottom: 10,
                  marginTop: 0,
                  marginLeft: 6,
                  marginRight: 6,
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
