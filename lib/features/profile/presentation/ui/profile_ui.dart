import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../../core/constants/app_sizes.dart';
import '../../../../core/helpers/assets_helper.dart';
import '../../../../core/router/app_router.dart';
import '../../../authentication/presentation/widgets/widgets.dart';
import '../widgets/profile_appbar.dart';

class ProfileUi extends ConsumerWidget {
  const ProfileUi({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final (theme, l10n) = appSettingsRecord(context);
    return SingleChildScrollView(
      padding: .only(bottom: 18.sh),
      child: Column(
        children: [
          const ProfileAppbar(),
          gapH16,
          Text(
            "William Wright",
            style: theme.headlineSmall.copyWith(color: theme.primary),
          ),
          gapH48,
          Container(
            padding: const .symmetric(horizontal: 16),
            margin: .symmetric(horizontal: 8.sw),
            decoration: BoxDecoration(
              color: theme.white,
              boxShadow: [
                BoxShadow(
                  color: theme.fullBlack.withValues(alpha: 0.25),
                  blurRadius: 4,
                  offset: const Offset(0, 4),
                ),
              ],
              border: .all(color: theme.primary, width: 1),
              borderRadius: .circular(16),
            ),
            child: Column(
              children: [
                ListTile(
                  onTap: () {},
                  leading: SvgPicture.asset(AssetsHelper.favoriteIcon),
                  contentPadding: .zero,
                  title: Text(
                    l10n.favorite,
                    style: theme.titleSmall.copyWith(
                      color: theme.primary,
                      fontWeight: .w400,
                    ),
                  ),
                  trailing: SvgPicture.asset(AssetsHelper.nextIcon),
                ),
                ListTile(
                  onTap: () {
                    context.router.push(const EditProfileRoute());
                  },
                  leading: SvgPicture.asset(AssetsHelper.editProfileIcon),
                  contentPadding: .zero,
                  title: Text(
                    l10n.editProfile,
                    style: theme.titleSmall.copyWith(
                      color: theme.primary,
                      fontWeight: .w400,
                    ),
                  ),
                  trailing: SvgPicture.asset(AssetsHelper.nextIcon),
                ),
                ListTile(
                  onTap: () {
                    context.router.push(const DairyRecordRoute());
                  },
                  leading: SvgPicture.asset(AssetsHelper.dairyRecordIcon),
                  contentPadding: .zero,
                  title: Text(
                    l10n.dairyRecording,
                    style: theme.titleSmall.copyWith(
                      color: theme.primary,
                      fontWeight: .w400,
                    ),
                  ),
                  trailing: SvgPicture.asset(AssetsHelper.nextIcon),
                ),
                ListTile(
                  onTap: () {},
                  leading: SvgPicture.asset(AssetsHelper.locationIcon2),
                  contentPadding: .zero,
                  title: Text(
                    l10n.location,
                    style: theme.titleSmall.copyWith(
                      color: theme.primary,
                      fontWeight: .w400,
                    ),
                  ),
                  trailing: SvgPicture.asset(AssetsHelper.nextIcon),
                ),
                ListTile(
                  onTap: () {
                    context.router.push(const SettingsRoute());
                  },
                  leading: SvgPicture.asset(AssetsHelper.settingsIcon),
                  contentPadding: .zero,
                  title: Text(
                    l10n.settings,
                    style: theme.titleSmall.copyWith(
                      color: theme.primary,
                      fontWeight: .w400,
                    ),
                  ),
                  trailing: SvgPicture.asset(AssetsHelper.nextIcon),
                ),
                ListTile(
                  onTap: () {
                    context.router.push(const SubscriptionRoute());
                  },
                  leading: SvgPicture.asset(AssetsHelper.subscriptionIcon),
                  contentPadding: .zero,
                  title: Text(
                    l10n.subscription,
                    style: theme.titleSmall.copyWith(
                      color: theme.primary,
                      fontWeight: .w400,
                    ),
                  ),
                  trailing: SvgPicture.asset(AssetsHelper.nextIcon),
                ),
              ],
            ),
          ),
          gapH32,
          Container(
            padding: const .symmetric(horizontal: 16),
            margin: .symmetric(horizontal: 8.sw),
            decoration: BoxDecoration(
              color: theme.primary,
              boxShadow: [
                BoxShadow(
                  color: theme.fullBlack.withValues(alpha: 0.25),
                  blurRadius: 4,
                  offset: const Offset(0, 4),
                ),
              ],
              borderRadius: .circular(16),
            ),
            child: ListTile(
              onTap: () {
                showLogoutDialog(context, ref);
              },
              leading: SvgPicture.asset(AssetsHelper.logoutIcon),
              contentPadding: .zero,
              title: Text(
                l10n.logout,
                style: theme.titleSmall.copyWith(
                  color: theme.white,
                  fontWeight: .w400,
                ),
              ),
              trailing: SvgPicture.asset(
                AssetsHelper.nextIcon,
                colorFilter: ColorFilter.mode(theme.white, BlendMode.srcIn),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
