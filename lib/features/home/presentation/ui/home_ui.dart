import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../../core/constants/app_sizes.dart';
import '../widgets/widgets.dart';

class HomeUi extends ConsumerStatefulWidget {
  const HomeUi({super.key});

  @override
  ConsumerState<HomeUi> createState() => _HomeUiState();
}

class _HomeUiState extends ConsumerState<HomeUi> {
  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);
    return SingleChildScrollView(
      padding: .only(top: 6.sh, bottom: 10.sh),
      child: Column(
        children: [
          AppBarWithSearchTextField(),
          gapH16,
          Padding(
            padding: .only(left: 3.5.sw, right: 3.5.sw),
            child: TitleWithSeeall(title: l10n.categories, onPress: null),
          ),
          gapH16,
          CategorySection(),
          gapH16,
          GymBanner(),
          gapH16,
          MixGymSection(),
          MaleGymSection(),
          FemaleGymSection(),
          KidsGymSection(),
          FamilyGymSection(),
        ],
      ),
    );
  }
}
