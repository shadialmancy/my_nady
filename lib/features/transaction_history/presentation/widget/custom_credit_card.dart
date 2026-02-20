import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../core/constants/app_sizes.dart';
import '../../../../core/helpers/assets_helper.dart';
import '../../data/models/payment_method_dto/datum.dart';

class CustomCreditCard extends StatelessWidget {
  final Datum? paymentMethod;
  const CustomCreditCard({super.key, this.paymentMethod});

  String _getCardBrandLogo(String? brand) {
    if (brand == null) return AssetsHelper.visaLogo;
    final brandLower = brand.toLowerCase();
    if (brandLower.contains('visa')) {
      return AssetsHelper.visaLogo;
    } else if (brandLower.contains('mastercard')) {
      return AssetsHelper
          .visaLogo; // You may need to add a mastercard logo asset
    }
    return AssetsHelper.visaLogo;
  }

  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);
    final last4Digits = paymentMethod?.last4Digits ?? '****';
    final cardBrand = paymentMethod?.cardBrand ?? '';
    final cardholderName = paymentMethod?.cardholderName ?? '';
    final expiryMonth = paymentMethod?.expiryMonth ?? 0;
    final expiryYear = paymentMethod?.expiryYear ?? 0;

    return Container(
      height: 200,
      width: .infinity,
      padding: .all(20),
      decoration: BoxDecoration(
        borderRadius: .circular(15),
        border: .all(
          color: theme.white.withValues(alpha: .35),
          width: 1,
          style: BorderStyle.solid,
          strokeAlign: BorderSide.strokeAlignInside,
        ),
      ),
      child: Column(
        crossAxisAlignment: .end,
        children: [
          SvgPicture.asset(AssetsHelper.nfcIcon),
          gapH32,

          Row(
            mainAxisAlignment: .spaceBetween,
            children: [
              SvgPicture.asset(AssetsHelper.cardChipIcon),
              Row(
                children: [
                  Icon(Icons.visibility, color: theme.white),
                  gapW4,
                  Text(
                    cardBrand.isNotEmpty ? cardBrand : "*****",
                    style: theme.titleSmall.copyWith(
                      color: theme.white,
                      fontSize: 14,
                      fontWeight: .w700,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Spacer(),
          if (cardholderName.isNotEmpty) ...[
            Text(
              cardholderName,
              style: theme.titleSmall.copyWith(
                color: theme.white,
                fontSize: 12,
                fontWeight: .w500,
              ),
            ),
            gapH4,
          ],
          Row(
            mainAxisAlignment: .spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "****$last4Digits",
                    style: theme.titleSmall.copyWith(
                      color: theme.white,
                      fontSize: 14,
                      fontWeight: .w700,
                    ),
                  ),
                  if (expiryMonth > 0 && expiryYear > 0)
                    Text(
                      "${expiryMonth.toString().padLeft(2, '0')}/${expiryYear.toString().substring(2)}",
                      style: theme.titleSmall.copyWith(
                        color: theme.white.withValues(alpha: 0.8),
                        fontSize: 10,
                        fontWeight: .w400,
                      ),
                    ),
                ],
              ),
              SvgPicture.asset(_getCardBrandLogo(cardBrand)),
            ],
          ),
        ],
      ),
    );
  }
}
