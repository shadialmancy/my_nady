import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../core/constants/app_sizes.dart';
import '../../../../core/helpers/assets_helper.dart';

class CustomCreditCard extends StatelessWidget {
  const CustomCreditCard({super.key});

  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);
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
                    "***** ₽",
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
          Row(
            mainAxisAlignment: .spaceBetween,
            children: [
              Text(
                "***9479",
                style: theme.titleSmall.copyWith(
                  color: theme.white,
                  fontSize: 14,
                  fontWeight: .w700,
                ),
              ),
              SvgPicture.asset(AssetsHelper.visaLogo),
            ],
          ),
        ],
      ),
    );
  }
}
