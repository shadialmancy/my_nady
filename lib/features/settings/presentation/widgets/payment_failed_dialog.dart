import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import '../../../../core/constants/app_sizes.dart';
import '../../../../core/helpers/assets_helper.dart';
import 'widgets.dart';

class PaymentFailedDialog extends StatelessWidget {
  const PaymentFailedDialog({super.key});

  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);

    return Dialog(
      backgroundColor: Colors.transparent,
      insetPadding: .symmetric(horizontal: 5),
      child: GestureDetector(
        onTap: () => context.router.maybePop(),
        child: ClipRRect(
          borderRadius: .circular(20),
          child: Stack(
            children: [
              // Background image that fills the entire container
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Transform.scale(
                  scale: .9,
                  child: Image.asset(
                    AssetsHelper.paymentFailedBanner,
                    width: .infinity,
                  ),
                ),
              ),
              // Content
              Padding(
                padding: .only(top: 200, right: 10.sw, left: 10.sw),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: .center,
                  crossAxisAlignment: .center,
                  children: [
                    Text(
                      "${l10n.paymentFailure}!",
                      style: theme.titleLarge.copyWith(
                        color: theme.redEB,
                        fontWeight: .w600,
                      ),
                    ),
                    gapH12,
                    Text(
                      l10n.yourPaymentHasBeenFailure,
                      textAlign: .center,
                      style: theme.labelMedium.copyWith(
                        color: theme.white.withValues(alpha: 0.7),
                        fontWeight: .w400,
                      ),
                    ),
                    gapH24,
                    Padding(
                      padding: const .symmetric(horizontal: 30),
                      child: Divider(
                        color: theme.white.withValues(alpha: 0.15),
                      ),
                    ),
                    gapH12,
                    Text(
                      l10n.totalPayment,
                      style: theme.labelMedium.copyWith(
                        color: theme.white.withValues(alpha: 0.7),
                        fontWeight: .w400,
                      ),
                    ),
                    gapH4,
                    Text(
                      "\$355.25",
                      style: theme.titleLarge.copyWith(
                        color: theme.white,
                        fontWeight: .w700,
                      ),
                    ),
                    gapH20,
                    Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: PaymentDetailsCard(
                                title: l10n.refNumber,
                                value: "000085752257",
                              ),
                            ),
                            gapW8,
                            Expanded(
                              child: PaymentDetailsCard(
                                title: l10n.paymentDate,
                                value: "25 Feb 2023, 09:41",
                              ),
                            ),
                          ],
                        ),
                        gapH8,
                        Row(
                          children: [
                            Expanded(
                              child: PaymentDetailsCard(
                                title: l10n.paymentMethod,
                                value: "Credit Card",
                              ),
                            ),
                            gapW8,
                            Expanded(
                              child: PaymentDetailsCard(
                                title: l10n.senderName,
                                value: "Deepak Parashar",
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Show the payment success dialog
  static Future<void> showPaymentDialog(BuildContext context) {
    return showDialog(
      context: context,
      barrierDismissible: true,
      builder: (context) => PaymentFailedDialog(),
    );
  }
}
