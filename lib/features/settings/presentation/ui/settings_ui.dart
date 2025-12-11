import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../../core/constants/app_sizes.dart';
import '../../../../core/helpers/assets_helper.dart';
import '../../../../core/router/app_router.dart';
import '../widgets/widgets.dart';

class SettingsUi extends StatelessWidget {
  const SettingsUi({super.key});

  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);
    return SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            children: [
              BannerBackground(
                height: 40.sh,
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
                        colorFilter: ColorFilter.mode(
                          theme.white,
                          BlendMode.srcIn,
                        ),
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
                            AssetsHelper.settingsIcon,
                            colorFilter: ColorFilter.mode(
                              theme.white,
                              BlendMode.srcIn,
                            ),
                          ),
                          gapW4,
                          Text(
                            l10n.settings,
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
              Container(
                width: .infinity,
                margin: .only(top: 18.sh, left: 3.sw, right: 3.sw, bottom: 40),
                padding: .all(26),
                decoration: BoxDecoration(
                  color: theme.white,
                  boxShadow: [
                    BoxShadow(
                      color: theme.grey4B.withValues(alpha: 0.15),
                      blurRadius: 16,
                      offset: const Offset(0, 2),
                    ),
                  ],
                  borderRadius: .circular(16),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 16,
                          child: Image.asset(
                            AssetsHelper.profileImageHolder,
                            fit: BoxFit.cover,
                          ),
                        ),
                        gapW8,
                        Text(
                          "William Wright",
                          style: theme.titleMedium.copyWith(fontWeight: .w700),
                        ),
                      ],
                    ),
                    gapH48,
                    Text(
                      l10n.accountSetting,
                      style: theme.titleMedium.copyWith(
                        color: theme.greyAD,
                        fontWeight: .w400,
                      ),
                    ),
                    gapH12,
                    // Edit profile
                    ListTile(
                      contentPadding: .zero,
                      onTap: () {
                        context.router.push(const EditProfileRoute());
                      },
                      leading: Text(
                        l10n.editProfile,
                        style: theme.titleMedium.copyWith(fontWeight: .w400),
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: theme.primary,
                        fontWeight: .w900,
                        size: 14,
                      ),
                    ),
                    // Change password
                    ListTile(
                      contentPadding: .zero,
                      onTap: () {
                        context.router.push(const ChangePasswordRoute());
                      },
                      leading: Text(
                        l10n.changePassword,
                        style: theme.titleMedium.copyWith(fontWeight: .w400),
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: theme.primary,
                        fontWeight: .w900,
                        size: 14,
                      ),
                    ),
                    // Add payment method
                    ListTile(
                      contentPadding: .zero,
                      onTap: () {},
                      leading: Text(
                        l10n.addPaymentMethod,
                        style: theme.titleMedium.copyWith(fontWeight: .w400),
                      ),
                      trailing: Icon(Icons.add, color: theme.primary, size: 22),
                    ),
                    // Notification
                    PushNotificationListTile(),
                    // Theme mode
                    ThemeModeListTile(),
                    gapH24,
                    Text(
                      l10n.more,
                      style: theme.titleMedium.copyWith(
                        color: theme.greyAD,
                        fontWeight: .w400,
                      ),
                    ),
                    gapH12,
                    ListTile(
                      contentPadding: .zero,
                      onTap: () {
                        // context.router.push(const EditProfileRoute());
                      },
                      leading: Text(
                        l10n.aboutUs,
                        style: theme.titleMedium.copyWith(fontWeight: .w400),
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: theme.primary,
                        fontWeight: .w900,
                        size: 14,
                      ),
                    ),
                    ListTile(
                      contentPadding: .zero,
                      onTap: () {
                        // context.router.push(const EditProfileRoute());
                      },
                      leading: Text(
                        l10n.privacyPolicy,
                        style: theme.titleMedium.copyWith(fontWeight: .w400),
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: theme.primary,
                        fontWeight: .w900,
                        size: 14,
                      ),
                    ),
                    ListTile(
                      contentPadding: .zero,
                      onTap: () {
                        // context.router.push(const EditProfileRoute());
                      },
                      leading: Text(
                        l10n.termsConditions,
                        style: theme.titleMedium.copyWith(fontWeight: .w400),
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: theme.primary,
                        fontWeight: .w900,
                        size: 14,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
