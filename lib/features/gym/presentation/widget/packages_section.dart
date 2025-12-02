import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/constants/app_sizes.dart';
import '../../../../core/helpers/assets_helper.dart';

class PackagesSection extends StatefulWidget {
  const PackagesSection({super.key});

  @override
  State<PackagesSection> createState() => _PackagesSectionState();
}

class _PackagesSectionState extends State<PackagesSection> {
  List<Map<String, dynamic>> packagesList = [];
  final ValueNotifier<List<Map<String, dynamic>>> packagesListNotifier =
      ValueNotifier([]);
  @override
  void initState() {
    super.initState();
    packagesListNotifier.value = [
      {"title": "1 Month", "price": "1200\$", "isSelected": true},
      {"title": "2 Month", "price": "1200\$", "isSelected": false},
      {"title": "3 Month", "price": "1200\$", "isSelected": false},
    ];
  }

  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);
    return ValueListenableBuilder(
      valueListenable: packagesListNotifier,
      builder: (context, value, child) => Column(
        children: [
          for (var element in value)
            GestureDetector(
              onTap: () {
                for (var element in packagesListNotifier.value) {
                  element['isSelected'] = false;
                }
                element['isSelected'] = true;
                packagesListNotifier.value = List.from(value);
              },
              child: Container(
                width: .infinity,
                margin: const .symmetric(horizontal: 24, vertical: 5),
                padding: const .symmetric(horizontal: 10, vertical: 12),
                decoration: BoxDecoration(
                  borderRadius: .circular(12),
                  border: Border.all(
                    color: element["isSelected"]
                        ? theme.secondary
                        : theme.primary,
                    width: 1,
                  ),
                  color: element["isSelected"]
                      ? theme.secondary.withValues(alpha: 0.2)
                      : theme.greyEE,
                ),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: .start,
                      children: [
                        Text(
                          element["title"],
                          style: theme.titleMedium.copyWith(
                            color: theme.primaryText,
                            fontWeight: .w500,
                            fontSize: 14,
                          ),
                        ),
                        Text(
                          element["price"],
                          style: theme.titleMedium.copyWith(
                            color: theme.primaryText,
                            fontWeight: .w500,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                    const Spacer(),
                    SvgPicture.asset(
                      element["isSelected"]
                          ? AssetsHelper.checkIcon
                          : AssetsHelper.uncheckIcon,
                      width: 22,
                    ),
                  ],
                ),
              ),
            ),
        ],
      ),
    );
  }
}
