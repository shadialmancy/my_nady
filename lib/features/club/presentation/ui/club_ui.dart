import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_nady_project/features/club/presentation/widget/widgets.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../../core/constants/app_sizes.dart';
import '../../../../core/helpers/assets_helper.dart';
import '../../../../core/shared/widgets/widgets.dart';
import '../../../home/presentation/widgets/widgets.dart';
import '../provider/get_gym_details_service.dart';
import '../../domain/repositories/club_repository.dart';
import '../../../../core/shared/widgets/app_toast.dart';
import '../../../settings/presentation/widgets/payment_success_dialog.dart';

class ClubUi extends ConsumerStatefulWidget {
  const ClubUi({super.key, required this.id, required this.distance});

  final String id;
  final String distance;

  @override
  ConsumerState<ClubUi> createState() => _ClubUiState();
}

class _ClubUiState extends ConsumerState<ClubUi> {
  List<Map<String, dynamic>> gymTabList = [];

  final PageController pageController = PageController();
  int selectedTabIndex = 0;
  String? selectedPlanId;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref
          .read(getGymDetailsServiceProvider.notifier)
          .fetchGymDetailsData(widget.id);
    });
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // Only initialize if empty to avoid resetting on rebuild
    if (gymTabList.isEmpty) {
      final (theme, l10n) = appSettingsRecord(context);
      gymTabList = [
        {"title": l10n.clubContent, "isSelected": true},
        {"title": l10n.location, "isSelected": false},
        {"title": l10n.comments, "isSelected": false},
      ];
    }
  }

  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);
    final gymDetailsState = ref.watch(getGymDetailsServiceProvider);

    // gymTabList is now initialized in didChangeDependencies
    return AsyncValueWidget(
      value: gymDetailsState,
      builder: (gymDetailEntity) {
        final gymData = gymDetailEntity?.data;

        return SingleChildScrollView(
          child: Column(
            children: [
              ClubImagesSlider(photos: gymData?.photos, name: gymData?.name),
              gapH32,
              Padding(
                padding: .only(left: 3.sw, right: 3.sw, bottom: 10.sw),
                child: Column(
                  crossAxisAlignment: .start,
                  mainAxisAlignment: .start,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 15,
                          backgroundColor: theme.gray600,
                        ),
                        gapW12,
                        Expanded(
                          flex: 2,
                          child: Text(
                            gymData?.name ?? "Personal Trainer",
                            style: theme.titleMedium.copyWith(
                              color: theme.primaryText,
                              fontSize: 22,
                              fontWeight: .w700,
                            ),
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
                          "${gymData?.rating?.averageRating ?? 4.9} (${gymData?.rating?.totalReviews ?? 231} ${l10n.reviews})",
                          style: theme.bodySmall.copyWith(color: theme.grey9C),
                        ),
                      ],
                    ),
                    gapH8,
                    FractionallySizedBox(
                      widthFactor: 0.85,
                      child: Text(
                        gymData?.description ??
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
                          "(400) m", // TODO: Usage of distance
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
                          "${l10n.branches}: ${gymData?.otherBranches?.length ?? 1}",
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
                            PackagesSection(
                              subscriptionPlans: gymData?.subscriptionPlans,
                              onPlanSelected: (id) {
                                setState(() {
                                  selectedPlanId = id;
                                });
                              },
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                if (gymData?.otherBranches?.isEmpty ?? true)
                                  Text(
                                    "No other branches available",
                                    style: theme.titleMedium.copyWith(
                                      color: theme.grey9C,
                                      fontWeight: .normal,
                                      fontSize: 12,
                                    ),
                                  )
                                else
                                  ...gymData!.otherBranches!.map(
                                    (branch) => Padding(
                                      padding: const EdgeInsets.only(
                                        bottom: 8.0,
                                      ),
                                      child: Row(
                                        children: [
                                          Icon(
                                            Icons.location_on,
                                            size: 16,
                                            color: theme.primary,
                                          ),
                                          gapW8,
                                          Text(
                                            branch.name ?? "Branch Name",
                                            style: theme.titleMedium.copyWith(
                                              color: theme.grey9C,
                                              fontWeight: .normal,
                                              fontSize: 14,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                              ],
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
                      onPressed: () async {
                        // context.router.push(const ClubLocationRoute());
                        if (selectedPlanId != null) {
                          try {
                            await ref
                                .read(clubRepositoryProvider.notifier)
                                .purchaseSubscription(selectedPlanId!);
                            if (context.mounted) {
                              PaymentSuccessDialog.showPaymentDialog(context);
                            }
                          } catch (e) {
                            AppToast.errorToast(e.toString());
                          }
                        } else {
                          AppToast.errorToast("Please select a plan");
                        }
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
