import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_nady_project/core/router/app_router.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../../core/constants/app_sizes.dart';
import '../../../../core/helpers/assets_helper.dart';
import '../../../../core/shared/widgets/widgets.dart';

class ClubLocationUi extends ConsumerStatefulWidget {
  const ClubLocationUi({super.key});

  @override
  ConsumerState<ClubLocationUi> createState() => _GymLocationUiState();
}

class _GymLocationUiState extends ConsumerState<ClubLocationUi> {
  final TextEditingController searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);
    return SingleChildScrollView(
      padding: .symmetric(horizontal: 3.sw),
      child: Column(
        children: [
          CustomTextField(
            width: .infinity,
            controller: searchController,
            hint: l10n.searchForGym,
            prefix: Padding(
              padding: const .only(right: 6),
              child: SvgPicture.asset(AssetsHelper.searchIcon, width: 12),
            ),
          ),
          gapH20,
          Column(
            children: List.generate(3, (index) {
              return DecoratedBox(
                decoration: BoxDecoration(
                  border: Border(bottom: BorderSide(color: theme.grey9C)),
                ),
                child: ListTile(
                  onTap: () {
                    context.router.push(const AddCreditCardRoute());
                  },
                  title: Text(
                    'Gym $index',
                    style: theme.titleSmall.copyWith(
                      color: theme.black1E,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(
                    "Los Angeles",
                    style: theme.bodySmall.copyWith(
                      fontSize: 14,
                      color: theme.grey9C.withValues(alpha: 0.65),
                    ),
                  ),
                  trailing: Text(
                    "0.5 miles",
                    style: theme.bodySmall.copyWith(
                      fontSize: 14,
                      color: theme.grey9C.withValues(alpha: 0.65),
                    ),
                  ),
                ),
              );
            }),
          ),
          // AsyncValueWidget(
          //   value: ref.watch(mapLocationServiceProvider),
          //   builder: (_) {
          //     return SizedBox(
          //       height: 40.sh,
          //       child: GoogleMap(
          //         initialCameraPosition: CameraPosition(
          //           target: ref
          //               .read(mapLocationServiceProvider.notifier)
          //               .currentPosition,
          //         ),
          //       ),
          //     );
          //   },
          // ),
        ],
      ),
    );
  }
}
