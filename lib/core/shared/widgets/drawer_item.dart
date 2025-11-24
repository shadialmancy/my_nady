import 'package:flutter/material.dart';
import '../../constants/app_sizes.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem({
    super.key,
    required this.title,
    required this.index,
    this.onTap,
  });

  final String title;
  final int index;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);
    return ListTile(
      title: Text(title, style: TextStyle(color: theme.white, fontSize: 16)),
      selected: false,
      contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      onTap: onTap ?? () => Navigator.of(context).pop(),
    );
  }
}
