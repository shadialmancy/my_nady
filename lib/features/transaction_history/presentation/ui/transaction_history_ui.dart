import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
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
                                child: Image.asset(
                                  AssetsHelper.profileImageHolder,
                                  fit: BoxFit.cover,
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
                  padding: .only(
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
                        loading: () => Padding(
                          padding: .only(top: 20.sh),
                          child: Center(
                            child: CircularProgressIndicator(
                              color: theme.primary,
                            ),
                          ),
                        ),
                        builder: (paymentMethodEntity) {
                          final paymentMethods =
                              paymentMethodEntity?.paymentMethods ?? [];
                          final count = paymentMethods.length;

                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const .symmetric(horizontal: 14),
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
                                              // After add‑card flow, just refresh list.

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
                                      icon: const Icon(Icons.add, size: 18),
                                      label: Text(
                                        l10n.addPaymentCard,
                                        style: theme.labelSmall.copyWith(
                                          color: theme.white,
                                        ),
                                      ),
                                      style: TextButton.styleFrom(
                                        foregroundColor: theme.white,
                                        padding: const EdgeInsets.symmetric(
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
                                      paymentMethodUiServiceProvider.notifier,
                                    )
                                    .deletePaymentMethod(id),
                              ),
                              gapH8,
                              // Container(
                              //   padding: .symmetric(vertical: 18),
                              //   width: .infinity,
                              //   decoration: BoxDecoration(
                              //     color: theme.white,
                              //     borderRadius: .circular(15),
                              //     border: Border.all(
                              //       color: theme.greyE0.withValues(alpha: .6),
                              //     ),
                              //   ),
                              //   child: Column(
                              //     children: [
                              //       Padding(
                              //         padding: .symmetric(horizontal: 18),
                              //         child: Row(
                              //           mainAxisAlignment: .spaceBetween,
                              //           children: [
                              //             Text(
                              //               l10n.recentTransactions,
                              //               style: theme.labelLarge.copyWith(
                              //                 color: theme.fullBlack,
                              //               ),
                              //             ),
                              //             GestureDetector(
                              //               onTap: () {
                              //                 context.router.push(
                              //                   const TransactionHistoryViewAllRoute(),
                              //                 );
                              //               },
                              //               child: Container(
                              //                 padding: const .symmetric(
                              //                   vertical: 6,
                              //                   horizontal: 12,
                              //                 ),
                              //                 decoration: BoxDecoration(
                              //                   borderRadius: .circular(8),
                              //                   border: .all(
                              //                     color: theme.greyE0.withValues(
                              //                       alpha: .6,
                              //                     ),
                              //                   ),
                              //                 ),
                              //                 child: Text(
                              //                   l10n.viewAll,
                              //                   style: theme.labelLarge.copyWith(
                              //                     color: theme.primary,
                              //                   ),
                              //                 ),
                              //               ),
                              //             ),
                              //           ],
                              //         ),
                              //       ),
                              //       gapH4,
                              //       Divider(color: theme.greyE0.withValues(alpha: .6)),
                              //       Padding(
                              //         padding: const .only(top: 8, left: 22, right: 22),
                              //         child: Column(
                              //           children: List.generate(
                              //             transactionHistoryData.length,
                              //             (index) => TransactionDetailsCard(
                              //               data: transactionHistoryData[index],
                              //             ),
                              //           ),
                              //         ),
                              //       ),
                              //     ],
                              //   ),
                              // ),
                            ],
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
