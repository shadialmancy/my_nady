import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/constants/app_sizes.dart';
import '../../../../core/helpers/assets_helper.dart';

class FavoriteButton extends StatefulWidget {
  const FavoriteButton({super.key});

  @override
  State<FavoriteButton> createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {
  bool isFav = false;

  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);
    return GestureDetector(
      onTap: () => setState(() {
        isFav = !isFav;
      }),
      child: CircleAvatar(
        radius: 15,
        backgroundColor: isFav ? theme.secondary : theme.white,
        child: SvgPicture.asset(
          AssetsHelper.heart1Icon,
          colorFilter: isFav ? .mode(theme.white, .srcIn) : null,
        ),
      ),
    );
  }
}
