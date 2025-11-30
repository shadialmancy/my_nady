import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../constants/app_sizes.dart';

import 'location_permission_dialog.dart';
import 'widgets.dart';

Future<void> showBirthdayDialog(BuildContext context) {
  return showDialog(
    context: context,
    builder: (context) {
      final (theme, l10n) = appSettingsRecord(context);
      return AlertDialog(
        backgroundColor: theme.whiteColor,
        shape: RoundedRectangleBorder(borderRadius: .circular(20)),
        contentPadding: const .only(left: 30, right: 30, top: 90, bottom: 50),
        content: Column(
          mainAxisSize: .min,
          crossAxisAlignment: .center,
          children: [
            // Title
            Padding(
              padding: const .symmetric(horizontal: 50),
              child: Text(
                l10n.enterDateofBirth,
                textAlign: .center,
                style: theme.bodyLarge.copyWith(
                  fontWeight: .bold,
                  fontSize: 24,
                  color: theme.primary,
                ),
              ),
            ),
            gapH12,
            // Description
            Text(
              l10n.yourAgeInformationWillBeUpdatedOnYourProfilePageAndThisWillDisplayedPubliclyOnYourDashboard,
              textAlign: .center,
              style: theme.bodyMedium.copyWith(
                fontSize: 12,
                color: theme.grey82,
                fontWeight: .w600,
              ),
            ),
            gapH48,

            // // Three text fields in a row
            Row(
              children: [
                Expanded(
                  child: CustomTextField(textAlign: .center, hint: 'Day'),
                ),
                gapW12,
                Expanded(
                  child: CustomTextField(hint: 'Month', textAlign: .center),
                ),
                gapW12,
                Expanded(
                  child: CustomTextField(hint: 'Year', textAlign: .center),
                ),
              ],
            ),
            gapH24,
            CustomButton(
              backgroundColor: theme.primary,
              title: l10n.continueTxt,
              titleStyle: theme.bodyMedium.copyWith(
                color: theme.white,
                fontWeight: .w600,
              ),
              width: double.infinity,
              onPressed: () async {
                await context.router.maybePop();
                context.mounted ? showLocationPerimssionDialog(context) : null;
              },
            ),
            gapH12,
            GestureDetector(
              onTap: () => context.router.maybePop(),
              child: Text(
                l10n.cancel,
                style: theme.bodyMedium.copyWith(
                  color: theme.secondaryText,
                  fontWeight: .w600,
                ),
              ),
            ),
          ],
        ),
      );
    },
  );
}
