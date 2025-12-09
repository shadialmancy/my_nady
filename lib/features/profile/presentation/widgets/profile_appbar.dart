import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/constants/app_sizes.dart';
import '../../../../core/helpers/assets_helper.dart';

class ProfileAppbar extends StatelessWidget {
  const ProfileAppbar({super.key, this.isEditable});
  final bool? isEditable;
  @override
  Widget build(BuildContext context) {
    final (theme, _) = appSettingsRecord(context);
    return SizedBox(
      height: 200,
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: const .only(
              bottomLeft: .circular(12),
              bottomRight: .circular(12),
            ),
            child: Image.asset(
              AssetsHelper.profileBannerHolder,
              fit: BoxFit.cover,
              height: 150,
              width: .infinity,
            ),
          ),
          if (isEditable ?? false)
            Positioned(
              left: 20,
              top: 40,
              child: GestureDetector(
                onTap: () {
                  context.router.maybePop();
                },
                child: SvgPicture.asset(
                  AssetsHelper.backIcon,
                  width: 26,
                  colorFilter: ColorFilter.mode(theme.white, BlendMode.srcIn),
                ),
              ),
            ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: CircleAvatar(
              radius: 50,
              backgroundColor: theme.white,
              child: Image.asset(
                AssetsHelper.profileImageHolder,
                fit: BoxFit.cover,
              ),
            ),
          ),
          if (isEditable ?? false)
            Positioned(
              bottom: 5,
              left: 80,
              right: 0,
              child: GestureDetector(
                onTap: () {},
                child: CircleAvatar(
                  radius: 15,
                  backgroundColor: theme.primary,
                  child: SvgPicture.asset(AssetsHelper.editIcon),
                ),
              ),
            ),
          if (isEditable ?? false)
            Positioned(
              bottom: 36,
              right: 20,
              child: GestureDetector(
                onTap: () {},
                child: CircleAvatar(
                  radius: 15,
                  backgroundColor: theme.primary,
                  child: SvgPicture.asset(AssetsHelper.editIcon),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
