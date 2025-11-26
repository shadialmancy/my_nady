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
    return SingleChildScrollView(
      padding: .only(top: 6.sh),
      child: Column(
        children: [
          AppBarWithSearchTextField(),
          gapH24,
          CategorySection(),
          gapH24,
          GymBanner(),
          gapH24,
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
