import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_nady_project/core/helpers/assets_helper.dart';
import 'package:my_nady_project/core/router/app_router.dart';

import '../../../../core/constants/app_sizes.dart';
import '../../../../core/helpers/session_manager.dart';
import '../../../../core/shared/widgets/widgets.dart';
import '../provider/auth_ui_service.dart';

Future<void> showLogoutDialog(BuildContext context, WidgetRef ref) {
  return showDialog(
    context: context,
    builder: (context) {
      final (theme, l10n) = appSettingsRecord(context);
      return AlertDialog(
        backgroundColor: theme.whiteColor,
        insetPadding: const .symmetric(horizontal: 12),
        shape: RoundedRectangleBorder(borderRadius: .circular(20)),
        contentPadding: const .all(32),
        content: Column(
          mainAxisSize: .min,
          crossAxisAlignment: .center,
          children: [
            SvgPicture.asset(
              AssetsHelper.logoutIcon,
              width: 50,
              colorFilter: ColorFilter.mode(theme.primary, BlendMode.srcIn),
            ),
            gapH16,
            Text(
              "${l10n.areYouSureYouWantToLogout}?",
              textAlign: .center,
              style: theme.headlineMedium.copyWith(
                color: theme.primary,
                fontWeight: .w400,
              ),
            ),
            gapH12,
            Text(
              "${l10n.weWantConfirmIfYouTrulyWishToLogOutOfYourAccount}.",
              textAlign: .center,
              style: theme.titleSmall.copyWith(
                color: theme.grey87.withValues(alpha: .87),
                fontWeight: .w400,
              ),
            ),
            gapH16,
            Row(
              children: [
                Expanded(
                  child: CustomButton(
                    title: l10n.logout,
                    onPressed: () async {
                      await sessionManager.setBoardingVisitState(status: false);
                      ref.read(authUiServiceProvider.notifier).logout();
                      context.mounted
                          ? context.router.replaceAll([const LoginRoute()])
                          : null;
                    },
                    width: .infinity,
                    backgroundColor: theme.redD0,
                  ),
                ),
                gapW16,
                Expanded(
                  child: CustomButton(
                    title: l10n.cancel,
                    onPressed: () {},
                    titleStyle: theme.bodyMedium.copyWith(color: theme.redD0),
                    shape: RoundedRectangleBorder(
                      borderRadius: .circular(8),
                      side: BorderSide(color: theme.redD0),
                    ),
                    width: .infinity,
                    backgroundColor: theme.white,
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    },
  );
}
