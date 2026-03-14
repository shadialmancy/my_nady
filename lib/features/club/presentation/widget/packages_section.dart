import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/constants/app_sizes.dart';
import '../../../../core/helpers/assets_helper.dart';

import 'package:my_nady_project/features/club/data/models/gym_detail_dto/subscription_plan.dart';

import '../../../../core/shared/widgets/app_toast.dart';
import '../../../../core/shared/widgets/custom_bottom.dart';
import '../../../settings/presentation/widgets/widgets.dart';
import '../../domain/repositories/club_repository.dart';

class PackagesSection extends ConsumerStatefulWidget {
  const PackagesSection({
    super.key,
    this.subscriptionPlans,
    this.onPlanSelected,
    this.selectedId,
    this.showSubscribeButton = true,
  });

  final List<SubscriptionPlan>? subscriptionPlans;
  final Function(String id)? onPlanSelected;
  final String? selectedId;
  final bool showSubscribeButton;

  @override
  ConsumerState<PackagesSection> createState() => _PackagesSectionState();
}

class _PackagesSectionState extends ConsumerState<PackagesSection> {
  late ValueNotifier<List<Map<String, dynamic>>> packagesListNotifier;
  String? _currentSelectedPlanId;

  @override
  void initState() {
    super.initState();
    final plans = widget.subscriptionPlans ?? [];

    // Determine the initial selected ID
    final initialId =
        widget.selectedId ?? (plans.isNotEmpty ? plans[0].id : null);
    _currentSelectedPlanId = initialId;

    packagesListNotifier = ValueNotifier(
      plans
          .map(
            (plan) => {
              "id": plan.id,
              "title": plan.name ?? plan.duration ?? "Package",
              "price": "${plan.price ?? 0}\$",
              "isSelected": widget.showSubscribeButton && plan.id == initialId,
            },
          )
          .toList(),
    );

    // If we picked a default initial ID that wasn't passed in, notify the parent
    if (initialId != null &&
        widget.selectedId == null &&
        widget.onPlanSelected != null) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        widget.onPlanSelected!(initialId);
      });
    }
  }

  @override
  void didUpdateWidget(PackagesSection oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.selectedId != oldWidget.selectedId ||
        widget.showSubscribeButton != oldWidget.showSubscribeButton) {
      _currentSelectedPlanId = widget.selectedId;
      final newList = packagesListNotifier.value.map((item) {
        return {
          ...item,
          "isSelected":
              widget.showSubscribeButton && item["id"] == widget.selectedId,
        };
      }).toList();
      packagesListNotifier.value = newList;
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
              padding: const EdgeInsets.all(20.0),
              child: Text("No packages available", style: theme.bodyMedium),
            ),
          ...value.map(
            (element) => GestureDetector(
              onTap: widget.showSubscribeButton
                  ? () {
                      final newList = value.map((item) {
                        return {
                          ...item,
                          "isSelected": item["id"] == element["id"],
                        };
                      }).toList();
                      packagesListNotifier.value = newList;
                      _currentSelectedPlanId = element["id"] as String?;

                      if (widget.onPlanSelected != null &&
                          element["id"] != null) {
                        widget.onPlanSelected!(element["id"] as String);
                      }
                    }
                  : null,
              child: Container(
                width: double.infinity,
                margin: const EdgeInsets.symmetric(horizontal: 24, vertical: 5),
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 12,
                ),
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
                  borderRadius: BorderRadius.circular(12),
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
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          element["title"] ?? "",
                          style: theme.titleMedium.copyWith(
                            color: theme.primaryText,
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                          ),
                        ),
                        Text(
                          element["price"] ?? "",
                          style: theme.titleMedium.copyWith(
                            color: theme.primaryText,
                            fontWeight: FontWeight.w500,
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
          ),
          if (widget.showSubscribeButton) ...[
            gapH12,
            CustomButton(
              title: l10n.subscribeNow,
              width: double.infinity,
              titleStyle: theme.titleMedium.copyWith(
                color: theme.white,
                fontSize: 16,
                fontWeight: FontWeight.normal,
              ),
              onPressed: () async {
                if (_currentSelectedPlanId != null) {
                  try {
                    await ref
                        .read(clubRepositoryProvider.notifier)
                        .purchaseSubscription(_currentSelectedPlanId!);
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
        ],
      ),
    );
  }
}
