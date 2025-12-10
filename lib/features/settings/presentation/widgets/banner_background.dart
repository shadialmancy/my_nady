import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../../core/constants/app_sizes.dart';

class BannerBackground extends StatelessWidget {
  const BannerBackground({super.key, required this.height, this.extraWidget});
  final double height;
  final Widget? extraWidget;
  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);
    return Container(
      padding: .only(top: 48, left: 3.sw, right: 3.sw),
      height: height,
      width: .infinity,
      decoration: BoxDecoration(
        color: theme.primary,
        borderRadius: .only(
          bottomLeft: .circular(20),
          bottomRight: .circular(20),
        ),
      ),
      child: extraWidget,
    );
  }
}
