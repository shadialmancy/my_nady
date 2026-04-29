import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:my_nady_project/core/constants/app_sizes.dart';
import 'package:my_nady_project/core/shared/widgets/widgets.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../../core/helpers/assets_helper.dart';
import '../../../../core/router/app_router.dart';
import '../../../authentication/presentation/provider/auth_ui_service.dart';
import '../../../settings/presentation/widgets/widgets.dart';
import '../provider/payment_method_ui_service.dart';
import '../widget/widgets.dart';

class TransactionHistoryUi extends ConsumerStatefulWidget {
  const TransactionHistoryUi({super.key});

  @override
  ConsumerState<TransactionHistoryUi> createState() =>
      _TransactionHistoryUiState();
}

class _TransactionHistoryUiState extends ConsumerState<TransactionHistoryUi> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(paymentMethodUiServiceProvider.notifier).fetchPaymentMethods();
    });
  }

  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);
    final authRef = ref.watch(authUiServiceProvider);
    return RefreshIndicator(
      onRefresh: () => ref
          .read(paymentMethodUiServiceProvider.notifier)
          .fetchPaymentMethods(),
      child: SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        child: Column(
          children: [
            Stack(
              children: [
                BannerBackground(
                  height: 33.sh,
                  extraWidget: Stack(
                    alignment: Alignment.topLeft,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              CircleAvatar(
                                radius: 16,
                                backgroundColor: theme.white,
                                child: Padding(
                                  padding: const EdgeInsets.all(5),
                                  child: SvgPicture.asset(
                                    AssetsHelper.profileIcon,
                                    fit: BoxFit.cover,
                                    colorFilter: ColorFilter.mode(
                                      theme.black1E,
                                      BlendMode.srcIn,
                                    ),
                                  ),
                                ),
                              ),
                              gapW8,
                              Text(
                                authRef.value?.name ?? "",
                                style: theme.headlineSmall.copyWith(
                                  color: theme.white,
                                ),
                              ),
                            ],
                          ),
                          CircleAvatar(
                            radius: 16,
                            backgroundColor: theme.white,
                            child: SvgPicture.asset(
                              AssetsHelper.notification1Icon,
                              colorFilter: ColorFilter.mode(
                                theme.primary,
                                BlendMode.srcIn,
                              ),
                              width: 24,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 20.sh,
                    left: 4.sw,
                    right: 4.sw,
                    bottom: 20.sh,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AsyncValueWidget(
                        value: ref.watch(paymentMethodUiServiceProvider),
                        loading: () => const _TransactionLoadingShimmer(),
                        builder: (paymentMethodEntity) {
                          final paymentMethods =
                              paymentMethodEntity?.paymentMethods ?? [];
                          final count = paymentMethods.length;

                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children:
                                [
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 14,
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              "${l10n.cardsAndAccounts} ($count)",
                                              style: theme.labelSmall.copyWith(
                                                color: theme.white,
                                              ),
                                            ),
                                            TextButton.icon(
                                              onPressed: () {
                                                context.router.push(
                                                  AddCreditCardRoute(
                                                    onClick: () {
                                                      ref
                                                          .read(
                                                            paymentMethodUiServiceProvider
                                                                .notifier,
                                                          )
                                                          .fetchPaymentMethods();
                                                    },
                                                  ),
                                                );
                                              },
                                              icon: const Icon(
                                                Icons.add,
                                                size: 18,
                                              ),
                                              label: Text(
                                                l10n.addPaymentCard,
                                                style: theme.labelSmall
                                                    .copyWith(
                                                      color: theme.white,
                                                    ),
                                              ),
                                              style: TextButton.styleFrom(
                                                foregroundColor: theme.white,
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                      horizontal: 12,
                                                      vertical: 4,
                                                    ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      CreditCardSlider(
                                        paymentMethods: paymentMethods,
                                        onRemove: (id) => ref
                                            .read(
                                              paymentMethodUiServiceProvider
                                                  .notifier,
                                            )
                                            .deletePaymentMethod(id),
                                      ),
                                      gapH8,
                                    ]
                                    .animate(interval: 100.ms)
                                    .fadeIn(duration: 400.ms)
                                    .slideY(
                                      begin: 0.05,
                                      curve: Curves.easeOutQuad,
                                    ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _TransactionLoadingShimmer extends StatelessWidget {
  const _TransactionLoadingShimmer();

  @override
  Widget build(BuildContext context) {
    final theme = appSettingsRecord(context).$1;
    final shimmerColor = theme.grey9C.withValues(alpha: 0.3);
    final highlightColor = theme.white.withValues(alpha: 0.6);

    return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 120,
                    height: 20,
                    decoration: BoxDecoration(
                      color: shimmerColor,
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ),
                  Container(
                    width: 100,
                    height: 20,
                    decoration: BoxDecoration(
                      color: shimmerColor,
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ),
                ],
              ),
            ),
            gapH16,
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 14),
              width: double.infinity,
              height: 180,
              decoration: BoxDecoration(
                color: shimmerColor,
                borderRadius: BorderRadius.circular(16),
              ),
            ),
          ],
        )
        .animate(onPlay: (controller) => controller.repeat())
        .shimmer(duration: 1500.ms, color: highlightColor);
  }
}
