import 'package:flutter/material.dart';

import '../../../../core/constants/app_sizes.dart';
import '../../../../core/shared/widgets/widgets.dart';

class ThemeModeListTile extends StatefulWidget {
  const ThemeModeListTile({super.key});

  @override
  State<ThemeModeListTile> createState() => _ThemeModeListTileState();
}

class _ThemeModeListTileState extends State<ThemeModeListTile> {
  bool isDarkMode = false;
  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);
    return ListTile(
      contentPadding: .zero,
      leading: Text(
        l10n.darkMode,
        style: theme.titleMedium.copyWith(fontWeight: .w400),
      ),
      trailing: CustomSwitch(
        value: isDarkMode,
        activeTrackColor: theme.primary,
        inactiveTrackColor: theme.greyEA,
        onChanged: (value) {
          setState(() {
            isDarkMode = value;
          });
        },
      ),
    );
  }
}
