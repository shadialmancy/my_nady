import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_nady_project/core/constants/app_sizes.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../../core/helpers/assets_helper.dart';
import '../../../../core/router/app_router.dart';
import '../../../settings/presentation/widgets/widgets.dart';
import '../widget/widgets.dart';

class TransactionHistoryUi extends StatelessWidget {
  const TransactionHistoryUi({super.key});

  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);
    return SingleChildScrollView(
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
                              "William Wright",
                              style: theme.titleMedium.copyWith(
                                color: theme.white,
                                fontWeight: .w700,
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
                    Padding(
                      padding: const .symmetric(horizontal: 14),
                      child: Text(
                        "${l10n.cardsAndAccounts} (3)",
                        style: theme.labelSmall.copyWith(color: theme.white),
                      ),
                    ),
                    const CreditCardSlider(),
                    gapH8,
                    Container(
                      padding: .symmetric(vertical: 18),
                      width: .infinity,
                      decoration: BoxDecoration(
                        color: theme.white,
                        borderRadius: .circular(15),
                        border: Border.all(
                          color: theme.greyE0.withValues(alpha: .6),
                        ),
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: .symmetric(horizontal: 18),
                            child: Row(
                              mainAxisAlignment: .spaceBetween,
                              children: [
                                Text(
                                  l10n.recentTransactions,
                                  style: theme.labelLarge.copyWith(
                                    color: theme.fullBlack,
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    context.router.push(
                                      const TransactionHistoryViewAllRoute(),
                                    );
                                  },
                                  child: Container(
                                    padding: const .symmetric(
                                      vertical: 6,
                                      horizontal: 12,
                                    ),
                                    decoration: BoxDecoration(
                                      borderRadius: .circular(8),
                                      border: .all(
                                        color: theme.greyE0.withValues(
                                          alpha: .6,
                                        ),
                                      ),
                                    ),
                                    child: Text(
                                      l10n.viewAll,
                                      style: theme.labelLarge.copyWith(
                                        color: theme.primary,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          gapH4,
                          Divider(color: theme.greyE0.withValues(alpha: .6)),
                          Padding(
                            padding: const .only(top: 8, left: 22, right: 22),
                            child: Column(
                              children: List.generate(
                                transactionHistoryData.length,
                                (index) => TransactionDetailsCard(
                                  data: transactionHistoryData[index],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
