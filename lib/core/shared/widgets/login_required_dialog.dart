import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/constants/app_sizes.dart';
import '../../../core/helpers/assets_helper.dart';
import '../../../core/router/app_router.dart';
import 'widgets.dart';

/// Shows a dialog asking the guest user to log in before accessing
/// a protected feature.
///
/// [onLoginPressed] is called after the dialog is dismissed when the user
/// taps "Login". If null, the router navigates to [LoginRoute] by default.
Future<void> showLoginRequiredDialog(
  BuildContext context, {
  VoidCallback? onLoginPressed,
}) {
  return showDialog(
    context: context,
    builder: (ctx) {
      final (theme, l10n) = appSettingsRecord(ctx);
      return AlertDialog(
        backgroundColor: theme.whiteColor,
        insetPadding: const EdgeInsets.symmetric(horizontal: 32),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        contentPadding: const EdgeInsets.all(32),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset(
              AssetsHelper.profileIcon,
              width: 56,
              colorFilter: ColorFilter.mode(theme.primary, BlendMode.srcIn),
            ),
            gapH16,
            Text(
              l10n.loginRequired,
              textAlign: TextAlign.center,
              style: theme.headlineMedium.copyWith(
                color: theme.primary,
                fontWeight: FontWeight.w600,
              ),
            ),
            gapH8,
            Text(
              l10n.loginRequiredMessage,
              textAlign: TextAlign.center,
              style: theme.titleSmall.copyWith(
                color: theme.grey87.withValues(alpha: .80),
                fontWeight: FontWeight.w400,
              ),
            ),
            gapH24,
            Row(
              children: [
                Expanded(
                  child: CustomButton(
                    title: l10n.login,
                    onPressed: () {
                      Navigator.of(ctx).pop();
                      if (onLoginPressed != null) {
                        onLoginPressed();
                      } else {
                        context.router.push(const LoginRoute());
                      }
                    },
                    width: double.infinity,
                  ),
                ),
                gapW12,
                Expanded(
                  child: CustomButton(
                    title: l10n.cancel,
                    onPressed: () => Navigator.of(ctx).pop(),
                    titleStyle: theme.bodyMedium.copyWith(color: theme.primary),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                      side: BorderSide(color: theme.primary),
                    ),
                    width: double.infinity,
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
