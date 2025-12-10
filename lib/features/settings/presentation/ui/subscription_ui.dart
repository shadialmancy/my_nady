import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../../core/constants/app_sizes.dart';
import '../../../../core/helpers/assets_helper.dart';
import '../widgets/widgets.dart';

class SubscriptionUi extends StatelessWidget {
  const SubscriptionUi({super.key});

  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);
    return SingleChildScrollView(
      child: Column(
        children: [
          BannerBackground(
            height: 15.sh,
            extraWidget: Stack(
              alignment: Alignment.topLeft,
              children: [
                GestureDetector(
                  onTap: () {
                    context.router.maybePop();
                  },
                  child: SvgPicture.asset(
                    AssetsHelper.backIcon,
                    width: 28,
                    colorFilter: ColorFilter.mode(theme.white, BlendMode.srcIn),
                  ),
                ),
                Positioned(
                  left: 0,
                  right: 0,
                  child: Row(
                    mainAxisAlignment: .center,
                    crossAxisAlignment: .center,
                    children: [
                      SvgPicture.asset(
                        AssetsHelper.subscriptionIcon,
                        colorFilter: ColorFilter.mode(
                          theme.white,
                          BlendMode.srcIn,
                        ),
                      ),
                      gapW4,
                      Text(
                        l10n.subscription,
                        style: theme.headlineSmall.copyWith(
                          color: theme.white,
                          fontSize: 18,
                          fontWeight: .w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: .only(top: 40, bottom: 40, left: 3.5.sw, right: 3.5.sw),
            child: Column(
              children: List.generate(4, (index) {
                return SubscriptionCard();
              }),
            ),
          ),
        ],
      ),
    );
  }
}
