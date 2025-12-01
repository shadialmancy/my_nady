import 'package:flutter/material.dart';

import '../../../../core/constants/app_sizes.dart';

class TitleWithSeeall extends StatelessWidget {
  const TitleWithSeeall({
    required this.title,
    required this.onPress,
    super.key,
  });
  final String title;
  final Function()? onPress;
  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);

    return Row(
      children: [
        Text(
          title,
          style: theme.headlineSmall.copyWith(
            color: theme.primary,
            fontWeight: .w600,
          ),
        ),
        const Spacer(),
        onPress != null
            ? GestureDetector(
                onTap: () => onPress ?? {},
                child: Text(
                  l10n.seeAll,
                  style: theme.bodySmall.copyWith(
                    decoration: .underline,
                    decorationColor: theme.secondary,
                    decorationThickness: 1.5,
                    color: theme.secondary,
                    fontSize: 12,
                  ),
                ),
              )
            : const SizedBox.shrink(),
      ],
    );
  }
}
