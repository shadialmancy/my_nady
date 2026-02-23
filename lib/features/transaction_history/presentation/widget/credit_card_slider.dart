import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import '../../../../core/constants/app_sizes.dart';
import '../../data/models/payment_method_dto/datum.dart';
import 'widgets.dart';

class CreditCardSlider extends StatefulWidget {
  final List<Datum> paymentMethods;
  final Future<void> Function(String id)? onRemove;
  const CreditCardSlider({
    super.key,
    required this.paymentMethods,
    this.onRemove,
  });

  @override
  State<CreditCardSlider> createState() => _CreditCardSliderState();
}

class _CreditCardSliderState extends State<CreditCardSlider> {
  int currentIndex = 0;
  String? removingId;

  Future<bool> _confirmRemove(BuildContext context) async {
    final (theme, l10n) = appSettingsRecord(context);
    final result = await showDialog<bool>(
      context: context,
      builder: (ctx) {
        return AlertDialog(
          backgroundColor: theme.white,
          title: Text(
            l10n.removeThisCardTitle,
            style: theme.titleMedium.copyWith(color: theme.fullBlack),
          ),
          content: Text(
            l10n.removeThisCardDescription,
            style: theme.bodyMedium.copyWith(
              color: theme.fullBlack.withValues(alpha: 0.75),
            ),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(ctx).pop(false),
              child: Text(
                l10n.cancel,
                style: theme.labelLarge.copyWith(color: theme.fullBlack),
              ),
            ),
            TextButton(
              onPressed: () => Navigator.of(ctx).pop(true),
              style: TextButton.styleFrom(foregroundColor: Colors.red),
              child: Text(l10n.remove),
            ),
          ],
        );
      },
    );
    return result ?? false;
  }

  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);
    final paymentMethods = widget.paymentMethods;

    if (paymentMethods.isEmpty) {
      return SizedBox(
        height: 230,
        child: Center(
          child: Text(
            l10n.noPaymentMethodsFound,
            style: theme.bodyMedium.copyWith(color: theme.white),
          ),
        ),
      );
    }

    return SizedBox(
      height: 250,
      child: Stack(
        alignment: .bottomCenter,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: CarouselSlider(
              items: List.generate(paymentMethods.length, (index) {
                final method = paymentMethods[index];
                final methodId = method.id;
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: CustomBackgroundTransaction(
                    height: 230,
                    child: CustomCreditCard(
                      paymentMethod: method,
                      isRemoving: removingId != null && removingId == methodId,
                      onRemove: (widget.onRemove == null || methodId == null)
                          ? null
                          : () async {
                              final confirmed = await _confirmRemove(context);
                              if (!confirmed) return;

                              setState(() => removingId = methodId);
                              try {
                                await widget.onRemove!(methodId);
                              } finally {
                                if (mounted) {
                                  setState(() => removingId = null);
                                }
                              }
                            },
                    ),
                  ),
                );
              }),

              options: CarouselOptions(
                onPageChanged: (index, reason) {
                  setState(() {
                    currentIndex = index;
                  });
                },

                scrollPhysics: ClampingScrollPhysics(),
                viewportFraction: 1,
                aspectRatio: 16 / 9,
                initialPage: 0,
              ),
            ),
          ),

          Row(
            mainAxisAlignment: .center,
            crossAxisAlignment: .end,
            children: List.generate(paymentMethods.length, (index) {
              return Container(
                margin: const EdgeInsets.symmetric(horizontal: 4, vertical: 8),
                width: 8,
                height: 8,
                decoration: BoxDecoration(
                  color: currentIndex == index ? theme.blue41 : theme.blueD1,
                  boxShadow: [BoxShadow(color: theme.blue8C, blurRadius: 30)],
                  shape: BoxShape.circle,
                ),
              );
            }),
          ),
        ],
      ),
    );
  }
}
