import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/constants/app_sizes.dart';
import '../../../../core/helpers/assets_helper.dart';

import 'package:my_nady_project/features/club/data/models/gym_detail_dto/subscription_plan.dart';

class PackagesSection extends StatefulWidget {
  const PackagesSection({
    super.key,
    this.subscriptionPlans,
    this.onPlanSelected,
  });

  final List<SubscriptionPlan>? subscriptionPlans;
  final Function(String id)? onPlanSelected;

  @override
  State<PackagesSection> createState() => _PackagesSectionState();
}

class _PackagesSectionState extends State<PackagesSection> {
  final ValueNotifier<List<Map<String, dynamic>>> packagesListNotifier =
      ValueNotifier([]);

  @override
  void initState() {
    super.initState();
    final plans = widget.subscriptionPlans ?? [];
    packagesListNotifier.value = plans
        .map(
          (plan) => {
            "id": plan.id,
            "title": plan.name ?? plan.duration ?? "Package",
            "price": "${plan.price ?? 0}\$",
            "isSelected": plans.indexOf(plan) == 0,
          },
        )
        .toList();

    // Notify initial selection if any
    if (plans.isNotEmpty && widget.onPlanSelected != null) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        widget.onPlanSelected!(plans[0].id!);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);
    return ValueListenableBuilder(
      valueListenable: packagesListNotifier,
      builder: (context, value, child) => Column(
        children: [
          if (value.isEmpty)
            Padding(
              padding: const .all(20.0),
              child: Text("No packages available", style: theme.bodyMedium),
            ),
          for (var element in value)
            GestureDetector(
              onTap: () {
                for (var el in packagesListNotifier.value) {
                  el['isSelected'] = false;
                }
                element['isSelected'] = true;
                packagesListNotifier.value = List.from(value);
                if (widget.onPlanSelected != null) {
                  widget.onPlanSelected!(element["id"]);
                }
              },
              child: Container(
                width: .infinity,
                margin: const .symmetric(horizontal: 24, vertical: 5),
                padding: const .symmetric(horizontal: 10, vertical: 12),
                decoration: BoxDecoration(
                  boxShadow: !element["isSelected"]
                      ? [
                          BoxShadow(
                            color: theme.fullBlack.withValues(alpha: 0.35),
                            offset: const Offset(0, 2),
                            blurRadius: 4,
                          ),
                        ]
                      : null,
                  borderRadius: .circular(12),
                  border: Border.all(
                    color: element["isSelected"]
                        ? theme.secondary
                        : theme.primary,
                    width: 1,
                  ),
                  color: element["isSelected"]
                      ? theme.secondary.withValues(alpha: 0.2)
                      : theme.white,
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
