import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import '../../../../core/constants/app_sizes.dart';
import '../../../../core/helpers/assets_helper.dart';

class CustomBackgroundTransaction extends StatelessWidget {
  const CustomBackgroundTransaction({
    super.key,
    required this.height,
    required this.child,
    this.borderRadius = 15,
  });
  final double height;
  final Widget child;
  final double borderRadius;

  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);
    return Stack(
      alignment: .center,
      children: [
        Container(
          margin: .symmetric(horizontal: 5.sw),
          height: height - 40,
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
          height: height,
          width: .infinity,
          decoration: BoxDecoration(
            borderRadius: .circular(borderRadius),
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
          height: height,
          width: .infinity,
          decoration: BoxDecoration(
            borderRadius: .circular(borderRadius),
            image: DecorationImage(
              image: AssetImage(AssetsHelper.creditCardMeshBlur),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          height: height,
          width: .infinity,
          decoration: BoxDecoration(
            borderRadius: .circular(15),
            color: theme.primary.withValues(alpha: .5),
          ),
        ),
        child,
      ],
    );
  }
}
