import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_builder/responsive_builder.dart';
import '../../../../core/constants/app_sizes.dart';
import '../../../../core/helpers/assets_helper.dart';

class CreditCard extends StatelessWidget {
  const CreditCard({super.key});

  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);
    return Stack(
      alignment: .center,
      children: [
        Container(
          margin: .symmetric(horizontal: 5.sw),
          height: 200 - 40,
          width: .infinity,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: theme.blue8C,
                offset: const Offset(0, 0),
                blurRadius: 30,
              ),
            ],
            borderRadius: .circular(100),
          ),
        ),
        Container(
          height: 200,
          width: .infinity,
          decoration: BoxDecoration(
            borderRadius: .circular(15),
            color: theme.white,
            border: Border.all(
              color: theme.white.withValues(alpha: .35),
              width: 1,
              style: BorderStyle.solid,
              strokeAlign: BorderSide.strokeAlignInside,
            ),
          ),
        ),
        Container(
          height: 200,
          width: .infinity,
          decoration: BoxDecoration(
            borderRadius: .circular(15),
            image: DecorationImage(
              image: AssetImage(AssetsHelper.creditCardMeshBlur),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          height: 200,
          width: .infinity,
          decoration: BoxDecoration(
            borderRadius: .circular(15),
            color: theme.primary.withValues(alpha: .5),
          ),
        ),
        Container(
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
        ),
      ],
    );
  }
}
