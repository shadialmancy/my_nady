import 'package:flutter/material.dart';

import '../../../../core/constants/app_sizes.dart';
import '../../../../core/shared/widgets/widgets.dart';

class PushNotificationListTile extends StatefulWidget {
  const PushNotificationListTile({super.key});

  @override
  State<PushNotificationListTile> createState() =>
      _PushNotificationListTileState();
}

class _PushNotificationListTileState extends State<PushNotificationListTile> {
  bool isNotification = false;
  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);
    return ListTile(
      contentPadding: .zero,
      leading: Text(
        l10n.pushNotification,
        style: theme.titleMedium.copyWith(fontWeight: .w400),
      ),
      trailing: CustomSwitch(
        value: isNotification,
        activeTrackColor: theme.primary,
        inactiveTrackColor: theme.greyEA,
        onChanged: (value) {
          setState(() {
            isNotification = value;
          });
        },
      ),
    );
  }
}
