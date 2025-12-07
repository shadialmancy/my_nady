import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_nady_project/core/router/app_router.dart';
import 'package:my_nady_project/features/club/presentation/widget/widgets.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../../core/constants/app_sizes.dart';
import '../../../../core/helpers/assets_helper.dart';
import '../../../../core/shared/widgets/widgets.dart';
import '../../../home/presentation/widgets/widgets.dart';

class ClubUi extends StatefulWidget {
  const ClubUi({super.key});

  @override
  State<ClubUi> createState() => _ClubUiState();
}

class _ClubUiState extends State<ClubUi> {
  List<Map<String, dynamic>> gymTabList = [];

  final PageController pageController = PageController();
  int selectedTabIndex = 0;

  // @override
  // void initState() {
  //   super.initState();
  //   // Initialize gymTabList once in initState to preserve state across rebuilds
  //   // We'll update the titles in didChangeDependencies when l10n is available
  // }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // Only initialize if empty to avoid resetting on rebuild
    if (gymTabList.isEmpty) {
      final (theme, l10n) = appSettingsRecord(context);
      gymTabList = [
        {"title": l10n.clubContent, "isSelected": true},
        {"title": l10n.description, "isSelected": false},
        {"title": l10n.comments, "isSelected": false},
      ];
    }
  }

  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);
    // gymTabList is now initialized in didChangeDependencies
    return SingleChildScrollView(
      child: Column(
        children: [
          const ClubImagesSlider(),
          gapH32,
          Padding(
            padding: .only(left: 3.sw, right: 3.sw, bottom: 10.sw),
            child: Column(
              crossAxisAlignment: .start,
              mainAxisAlignment: .start,
              children: [
                Row(
                  children: [
                    CircleAvatar(radius: 15, backgroundColor: theme.gray600),
                    gapW12,
                    Text(
                      "Personal Trainer",
                      style: theme.titleMedium.copyWith(
                        color: theme.primaryText,
                        fontSize: 22,
                        fontWeight: .w700,
                      ),
                    ),
                    Spacer(),
                    DecoratedBox(
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: theme.fullBlack.withValues(alpha: 0.25),
                            blurRadius: 29,
                            offset: Offset(0, 4),
                          ),
                        ],
                      ),
                      child: FavoriteButton(),
                    ),
                  ],
                ),
                gapH8,
                Row(
                  children: [
                    Icon(Icons.star, color: theme.yellow37),
                    gapW12,
                    Text(
                      "4.9 (231 ${l10n.reviews})",
                      style: theme.bodySmall.copyWith(color: theme.grey9C),
                    ),
                  ],
                ),
                gapH8,
                FractionallySizedBox(
                  widthFactor: 0.85,
                  child: Text(
                    "You will learn how to put together professional training plans to apply to specific goals of your own or those you will train in the future.",
                    style: theme.bodySmall.copyWith(color: theme.grey9C),
                  ),
                ),
                gapH12,
                Row(
                  mainAxisAlignment: .spaceBetween,
                  children: [
                    Text(
                      l10n.nearDistance,
                      style: theme.titleMedium.copyWith(
                        color: theme.primaryText,
                        fontWeight: .w700,
                      ),
                    ),
                    Text(
                      "(400) m",
                      style: theme.titleMedium.copyWith(
                        color: theme.primaryText,
                        fontWeight: .w700,
                      ),
                    ),
                  ],
                ),
                gapH12,
                Text(
                  l10n.categories,
                  style: theme.titleMedium.copyWith(
                    color: theme.primaryText,
                    fontWeight: .w700,
                  ),
                ),
                gapH8,
                CategorySection(
                  backgroundColor: theme.primary,
                  enableOpacity: true,
                ),
                gapH12,
                Row(
                  children: [
                    SvgPicture.asset(AssetsHelper.place2Icon),
                    gapW4,
                    Text(
                      "${l10n.branches}: Branch 1",
                      style: theme.titleSmall.copyWith(
                        fontWeight: .w700,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
                gapH12,
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: .spaceBetween,
                      children: gymTabList.map((item) {
                        return GestureDetector(
                          onTap: () {
                            for (var element in gymTabList) {
                              element['isSelected'] = false;
                            }
                            item['isSelected'] = true;
                            selectedTabIndex = gymTabList.indexOf(item);
                            setState(() {});
                          },
                          child: Container(
                            padding: const .all(8),
                            decoration: BoxDecoration(
                              borderRadius: .circular(16),
                              color: item["isSelected"]
                                  ? theme.primary
                                  : theme.white,
                              border: Border.all(color: theme.primary),
                            ),
                            child: Text(
                              item["title"],
                              style: theme.titleSmall.copyWith(
                                color: item["isSelected"]
                                    ? theme.white
                                    : theme.primary.withValues(alpha: 0.7),
                                fontWeight: .w600,
                                fontSize: 14,
                              ),
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                    gapH12,
                    AnimatedSwitcher(
                      duration: Duration(milliseconds: 300),
                      child: [
                        const PackagesSection(),
                        Text(
                          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic",
                          style: theme.titleMedium.copyWith(
                            color: theme.grey9C,
                            fontWeight: .normal,
                            fontSize: 12,
                          ),
                        ),
                        const CommentsSection(),
                      ][selectedTabIndex],
                    ),
                  ],
                ),
                gapH12,
                CustomButton(
                  title: l10n.subscribeNow,
                  width: .infinity,
                  titleStyle: theme.titleMedium.copyWith(
                    color: theme.white,
                    fontSize: 16,
                    fontWeight: .normal,
                  ),
                  onPressed: () {
                    context.router.push(const ClubLocationRoute());
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
