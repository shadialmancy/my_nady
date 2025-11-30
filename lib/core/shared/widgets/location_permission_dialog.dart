import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:my_nady_project/core/helpers/assets_helper.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../constants/app_sizes.dart';

import 'widgets.dart';

Future<void> showLocationPerimssionDialog(BuildContext context) {
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
            SizedBox(
              height: 35.sh,
              child: Stack(
                children: [
                  Padding(
                    padding: .only(top: 50),
                    child: Image.asset(
                      AssetsHelper.locationPermissionBanner,
                      height: 233.sh,
                    ),
                  ),
                  Column(
                    children: [
                      Text(
                        l10n.allowingLocationHelpsUsServeYouBetter,
                        textAlign: .center,
                        style: theme.bodyLarge.copyWith(
                          fontWeight: .bold,
                          fontSize: 24,
                          color: theme.primary,
                        ),
                      ),
                      gapH12,
                      // Description
                      Text(
                        l10n.itIsVeryImportantThatYouChooseTheAlwaysAllowOptionInTheNextDialogItMakesTheSystemWorkBetterThankYou,
                        textAlign: .center,
                        style: theme.bodyMedium.copyWith(
                          fontSize: 12,
                          color: theme.grey82,
                          fontWeight: .w600,
                        ),
                      ),
                    ],
                  ),

                  // // Three text fields in a row
                ],
              ),
            ),
            gapH16,
            CustomButton(
              backgroundColor: theme.primary,
              title: l10n.grantAccessToLocation,
              titleStyle: theme.bodyMedium.copyWith(
                color: theme.white,
                fontWeight: .w600,
              ),
              width: double.infinity,
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
