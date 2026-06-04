import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'package:my_nady_project/core/constants/app_sizes.dart';
import 'package:my_nady_project/core/helpers/assets_helper.dart';
import 'package:my_nady_project/core/router/app_router.dart';
import 'package:my_nady_project/core/shared/widgets/widgets.dart';
import 'package:my_nady_project/features/authentication/presentation/provider/auth_ui_service.dart';
import 'package:my_nady_project/features/authentication/presentation/widgets/widgets.dart';
import 'package:my_nady_project/features/profile/presentation/widgets/profile_appbar.dart';

class ProfileUi extends ConsumerWidget {
  const ProfileUi({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final (theme, l10n) = appSettingsRecord(context);
    final authRef = ref.watch(authUiServiceProvider);
    final isRtl = Localizations.localeOf(context).languageCode == 'ar';

    if (authRef.value == null) {
      return Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.sw),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                AssetsHelper.profileIcon,
                width: 80,
                colorFilter: ColorFilter.mode(theme.primary, BlendMode.srcIn),
              ),
              gapH24,
              Text(
                l10n.loginRequired,
                style: theme.headlineSmall.copyWith(
                  color: theme.primary,
                  fontWeight: FontWeight.w600,
                ),
              ),
              gapH12,
              Text(
                l10n.loginRequiredMessage,
                textAlign: TextAlign.center,
                style: theme.titleSmall.copyWith(
                  color: theme.grey87.withValues(alpha: .80),
                  fontWeight: FontWeight.w400,
                ),
              ),
              gapH32,
              CustomButton(
                title: l10n.login,
                onPressed: () {
                  context.router.push(const LoginRoute());
                },
                width: double.infinity,
              ),
            ],
          ),
        ),
      );
    }

    return SingleChildScrollView(
      padding: EdgeInsets.only(bottom: 18.sh),
      child: Column(
        children: [
          const ProfileAppbar(),
          gapH16,
          Text(
            authRef.value?.name ?? "",
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
                // ListTile(
                //   onTap: () {},
                //   leading: SvgPicture.asset(AssetsHelper.favoriteIcon),
                //   contentPadding: .zero,
                //   title: Text(
                //     l10n.favorite,
                //     style: theme.titleSmall.copyWith(
                //       color: theme.primary,
                //       fontWeight: .w400,
                //     ),
                //   ),
                //   trailing: Transform.flip(
                //     flipX: isRtl,
                //     child: SvgPicture.asset(AssetsHelper.nextIcon),
                //   ),
                // ),
                ListTile(
                  onTap: () {
                    context.router.push(const EditProfileRoute());
                  },
                  leading: Padding(
                    padding: const .only(left: 4),
                    child: SvgPicture.asset(AssetsHelper.editProfileIcon),
                  ),
                  contentPadding: .zero,
                  title: Text(
                    l10n.editProfile,
                    style: theme.titleSmall.copyWith(
                      color: theme.primary,
                      fontWeight: .w400,
                    ),
                  ),
                  trailing: Transform.flip(
                    flipX: isRtl,
                    child: SvgPicture.asset(AssetsHelper.nextIcon),
                  ),
                ),
                ListTile(
                  onTap: () {
                    context.router.push(const AddressBookRoute());
                  },
                  leading: Icon(Icons.book, color: theme.primary),
                  contentPadding: .zero,
                  title: Text(
                    l10n.addressBook,
                    style: theme.titleSmall.copyWith(
                      color: theme.primary,
                      fontWeight: .w400,
                    ),
                  ),
                  trailing: Transform.flip(
                    flipX: isRtl,
                    child: SvgPicture.asset(AssetsHelper.nextIcon),
                  ),
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
                  trailing: Transform.flip(
                    flipX: isRtl,
                    child: SvgPicture.asset(AssetsHelper.nextIcon),
                  ),
                ),
                ListTile(
                  onTap: () {
                    context.router.push(MapRoute());
                  },
                  leading: Padding(
                    padding: const .only(left: 4),
                    child: SvgPicture.asset(AssetsHelper.locationIcon2),
                  ),
                  contentPadding: .zero,
                  title: Text(
                    l10n.location,
                    style: theme.titleSmall.copyWith(
                      color: theme.primary,
                      fontWeight: .w400,
                    ),
                  ),
                  trailing: Transform.flip(
                    flipX: isRtl,
                    child: SvgPicture.asset(AssetsHelper.nextIcon),
                  ),
                ),
                ListTile(
                  onTap: () {
                    context.router.push(const SettingsRoute());
                  },
                  leading: Padding(
                    padding: const .only(left: 4),
                    child: SvgPicture.asset(AssetsHelper.settingsIcon),
                  ),
                  contentPadding: .zero,
                  title: Text(
                    l10n.settings,
                    style: theme.titleSmall.copyWith(
                      color: theme.primary,
                      fontWeight: .w400,
                    ),
                  ),
                  trailing: Transform.flip(
                    flipX: isRtl,
                    child: SvgPicture.asset(AssetsHelper.nextIcon),
                  ),
                ),
                ListTile(
                  onTap: () {
                    context.router.push(const SubscriptionRoute());
                  },
                  leading: Padding(
                    padding: const .only(left: 4),
                    child: SvgPicture.asset(AssetsHelper.subscriptionIcon),
                  ),
                  contentPadding: .zero,
                  title: Text(
                    l10n.subscription,
                    style: theme.titleSmall.copyWith(
                      color: theme.primary,
                      fontWeight: .w400,
                    ),
                  ),
                  trailing: Transform.flip(
                    flipX: isRtl,
                    child: SvgPicture.asset(AssetsHelper.nextIcon),
                  ),
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
              trailing: Transform.flip(
                flipX: isRtl,
                child: SvgPicture.asset(
                  AssetsHelper.nextIcon,
                  colorFilter: ColorFilter.mode(theme.white, BlendMode.srcIn),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
