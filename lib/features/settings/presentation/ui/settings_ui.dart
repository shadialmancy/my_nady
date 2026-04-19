// ignore_for_file: deprecated_member_use

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../../core/constants/app_sizes.dart';
import '../../../../core/helpers/assets_helper.dart';
import '../../../../core/router/app_router.dart';
import '../../../../app/view/app.dart';
import '../../../../core/localization/locale_constants.dart';
import '../../../authentication/presentation/provider/auth_ui_service.dart';
import '../widgets/widgets.dart';

class SettingsUi extends ConsumerWidget {
  const SettingsUi({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final (theme, l10n) = appSettingsRecord(context);
    final authRef = ref.watch(authUiServiceProvider);
    final currentLangCode = Localizations.localeOf(context).languageCode;
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
                          child: ClipOval(
                            child: authRef.value?.image != null
                                ? CachedNetworkImage(
                                    imageUrl: authRef.value!.image!,
                                    fit: BoxFit.cover,
                                    width: 32,
                                    height: 32,
                                    errorWidget: (context, url, error) =>
                                        Image.asset(
                                          AssetsHelper.profileImageHolder,
                                          fit: BoxFit.cover,
                                        ),
                                  )
                                : Image.asset(
                                    AssetsHelper.profileImageHolder,
                                    fit: BoxFit.cover,
                                  ),
                          ),
                        ),
                        gapW8,
                        Text(
                          authRef.value?.name ?? "",
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
                    // Address book
                    ListTile(
                      contentPadding: .zero,
                      onTap: () {
                        context.router.push(const AddressBookRoute());
                      },

                      leading: Text(
                        l10n.addressBook,
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
                        context.router.push(ChangePasswordRoute());
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
                    // Language
                    ListTile(
                      contentPadding: .zero,
                      onTap: () async {
                        final selectedCode = await showModalBottomSheet<String>(
                          context: context,
                          backgroundColor: Colors.transparent,
                          builder: (ctx) {
                            final (theme, l10n) = appSettingsRecord(ctx);
                            return Container(
                              margin: .symmetric(
                                horizontal: 3.sw,
                                vertical: 16,
                              ),
                              padding: .all(16),
                              decoration: BoxDecoration(
                                color: theme.white,
                                borderRadius: .circular(16),
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    l10n.language,
                                    style: theme.titleMedium.copyWith(
                                      fontWeight: .w600,
                                      color: theme.fullBlack,
                                    ),
                                  ),
                                  gapH12,
                                  RadioListTile<String>(
                                    value: english,
                                    groupValue: currentLangCode,
                                    onChanged: (value) =>
                                        Navigator.of(ctx).pop(value),
                                    title: Text(
                                      l10n.en,
                                      style: theme.titleMedium.copyWith(
                                        fontWeight: .w400,
                                      ),
                                    ),
                                  ),
                                  RadioListTile<String>(
                                    value: arabic,
                                    groupValue: currentLangCode,
                                    onChanged: (value) =>
                                        Navigator.of(ctx).pop(value),
                                    title: Text(
                                      l10n.ar,
                                      style: theme.titleMedium.copyWith(
                                        fontWeight: .w400,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        );

                        if (selectedCode != null &&
                            selectedCode != currentLangCode) {
                          final newLocale = await setLocale(selectedCode);
                          if (context.mounted) {
                            App.setLocale(context, newLocale);
                          }
                        }
                      },
                      leading: Text(
                        l10n.language,
                        style: theme.titleMedium.copyWith(fontWeight: .w400),
                      ),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            currentLangCode == arabic ? l10n.ar : l10n.en,
                            style: theme.bodyMedium.copyWith(
                              color: theme.primary,
                              fontWeight: .w500,
                            ),
                          ),
                          const SizedBox(width: 4),
                          Icon(
                            Icons.arrow_forward_ios_rounded,
                            color: theme.primary,
                            fontWeight: .w900,
                            size: 14,
                          ),
                        ],
                      ),
                    ),
                    // Add payment method
                    // ListTile(
                    //   contentPadding: .zero,
                    //   onTap: () {},
                    //   leading: Text(
                    //     l10n.addPaymentMethod,
                    //     style: theme.titleMedium.copyWith(fontWeight: .w400),
                    //   ),
                    //   trailing: Icon(Icons.add, color: theme.primary, size: 22),
                    // ),
                    // // Notification
                    // PushNotificationListTile(),
                    // // Theme mode
                    // ThemeModeListTile(),
                    // gapH24,
                    // Text(
                    //   l10n.more,
                    //   style: theme.titleMedium.copyWith(
                    //     color: theme.greyAD,
                    //     fontWeight: .w400,
                    //   ),
                    // ),
                    // gapH12,
                    // ListTile(
                    //   contentPadding: .zero,
                    //   onTap: () {
                    //     // context.router.push(const EditProfileRoute());
                    //   },
                    //   leading: Text(
                    //     l10n.aboutUs,
                    //     style: theme.titleMedium.copyWith(fontWeight: .w400),
                    //   ),
                    //   trailing: Icon(
                    //     Icons.arrow_forward_ios_rounded,
                    //     color: theme.primary,
                    //     fontWeight: .w900,
                    //     size: 14,
                    //   ),
                    // ),
                    // ListTile(
                    //   contentPadding: .zero,
                    //   onTap: () {
                    //     // context.router.push(const EditProfileRoute());
                    //   },
                    //   leading: Text(
                    //     l10n.privacyPolicy,
                    //     style: theme.titleMedium.copyWith(fontWeight: .w400),
                    //   ),
                    //   trailing: Icon(
                    //     Icons.arrow_forward_ios_rounded,
                    //     color: theme.primary,
                    //     fontWeight: .w900,
                    //     size: 14,
                    //   ),
                    // ),
                    // ListTile(
                    //   contentPadding: .zero,
                    //   onTap: () {
                    //     // context.router.push(const EditProfileRoute());
                    //   },
                    //   leading: Text(
                    //     l10n.termsConditions,
                    //     style: theme.titleMedium.copyWith(fontWeight: .w400),
                    //   ),
                    //   trailing: Icon(
                    //     Icons.arrow_forward_ios_rounded,
                    //     color: theme.primary,
                    //     fontWeight: .w900,
                    //     size: 14,
                    //   ),
                    // ),
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
