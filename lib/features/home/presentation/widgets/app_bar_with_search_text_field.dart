import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_nady_project/core/helpers/assets_helper.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../../core/constants/app_sizes.dart';
import '../../../../core/shared/widgets/custom_text_field.dart';

class AppBarWithSearchTextField extends StatefulWidget {
  const AppBarWithSearchTextField({super.key});

  @override
  State<AppBarWithSearchTextField> createState() =>
      _AppBarWithSearchTextFieldState();
}

class _AppBarWithSearchTextFieldState extends State<AppBarWithSearchTextField> {
  TextEditingController searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);

    return Padding(
      padding: .only(left: 3.5.sw, right: 3.5.sw),
      child: Column(
        children: [
          Row(
            children: [
              Column(
                crossAxisAlignment: .start,
                children: [
                  Padding(
                    padding: const .only(left: 4),
                    child: Text(
                      l10n.location,
                      style: theme.bodyMedium.copyWith(
                        color: theme.grey87,
                        fontSize: 12,
                      ),
                    ),
                  ),
                  gapH8,
                  Row(
                    children: [
                      SvgPicture.asset(AssetsHelper.place2Icon),
                      gapW4,
                      Text(
                        'San Francisco, USA',
                        style: theme.bodyMedium.copyWith(
                          color: theme.primary,
                          fontSize: 14,
                          fontWeight: .w400,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const Spacer(),
              CircleAvatar(
                radius: 16,
                backgroundColor: theme.primary,
                child: SvgPicture.asset(
                  AssetsHelper.notification1Icon,
                  width: 20,
                ),
              ),
            ],
          ),
          gapH16,
          Row(
            children: [
              Expanded(
                child: CustomTextField(
                  controller: searchController,
                  hint: l10n.searchForGym,
                  prefix: Padding(
                    padding: const .only(right: 6),
                    child: SvgPicture.asset(AssetsHelper.searchIcon, width: 12),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: .circular(12),
                    borderSide: BorderSide(color: theme.primary, width: 1),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: .circular(12),
                    borderSide: BorderSide(color: theme.primary, width: 1),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: .circular(12),
                    borderSide: BorderSide(color: theme.primary, width: 1),
                  ),
                ),
              ),
              gapW8,
              DecoratedBox(
                decoration: BoxDecoration(
                  color: theme.white,
                  borderRadius: .circular(12),
                  border: .all(width: 1, color: theme.primary),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 5,
                    vertical: 14,
                  ),
                  child: Row(
                    children: [
                      SvgPicture.asset(AssetsHelper.filterIcon),
                      gapW4,
                      Text(
                        l10n.filter,
                        style: theme.labelSmallSecondary.copyWith(
                          color: theme.primary,
                          fontWeight: .bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
