import 'package:flutter/material.dart';
import '../../constants/app_sizes.dart';
import 'drawer_item.dart';

class CustomNavigationDrawer extends StatelessWidget {
  const CustomNavigationDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);
    return Drawer(
      width: 250,
      backgroundColor: theme.backgroundColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(top: 50, left: 16, right: 16, bottom: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Menu',
                  style: TextStyle(
                    color: theme.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 20),
                Divider(color: theme.green29),
              ],
            ),
          ),
          Expanded(
            child: ListView(
              padding: EdgeInsets.symmetric(horizontal: 16),
              children: [
                DrawerItem(title: 'Items', index: 0),
                DrawerItem(title: 'Pricing', index: 1),
                DrawerItem(title: 'Info', index: 2),
                DrawerItem(title: 'Tasks', index: 3),
                DrawerItem(title: 'Analytics', index: 4),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
