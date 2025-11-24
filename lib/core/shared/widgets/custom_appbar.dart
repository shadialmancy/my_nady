import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../constants/app_constants.dart';
import '../../constants/app_sizes.dart';

class CustomAppbar extends StatefulWidget {
  const CustomAppbar({super.key, this.scaffoldKey});

  final GlobalKey<ScaffoldState>? scaffoldKey;

  @override
  State<CustomAppbar> createState() => _CustomAppbarState();
}

class _CustomAppbarState extends State<CustomAppbar> {
  int selectedIndex = 0;
  List<Map<String, dynamic>> tabs = [
    {'name': 'Items', 'isSelected': true},
    {'name': 'Pricing', 'isSelected': false},
    {'name': 'Info', 'isSelected': false},
    {'name': 'Tasks', 'isSelected': false},
    {'name': 'Analytics', 'isSelected': false},
  ];

  bool get isMobile => MediaQuery.of(context).size.width < 1024;

  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);

    return Container(
      padding: EdgeInsets.only(
        left: isMobile ? 16 : 80,
        right: isMobile ? 16 : 80,
      ),
      height: 76,
      decoration: BoxDecoration(
        color: theme.backgroundColor,
        border: Border(bottom: BorderSide(color: theme.grey78, width: 1)),
      ),
      child: Row(
        children: [
          if (isMobile)
            Row(
              children: [
                IconButton(
                  icon: SvgPicture.asset(
                    AppConstants.menuIcon,
                    width: 24,
                    height: 24,
                    colorFilter: ColorFilter.mode(theme.white, BlendMode.srcIn),
                  ),
                  onPressed: () =>
                      widget.scaffoldKey?.currentState?.openDrawer(),
                ),
                gapW8,
              ],
            ),
          Image.asset(AppConstants.logoImage, width: 82),
          Spacer(),
          if (!isMobile)
            Align(
              alignment: Alignment.bottomCenter,
              child: TabBar(
                isScrollable: true,
                padding: EdgeInsets.zero,
                tabAlignment: TabAlignment.center,
                indicatorColor: Colors.orange,
                indicatorWeight: 2,
                indicatorSize: TabBarIndicatorSize.label,
                dividerColor: Colors.transparent,
                labelColor: theme.white,
                unselectedLabelColor: theme.grey,
                labelStyle: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
                unselectedLabelStyle: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                ),
                onTap: (value) {
                  setState(() {
                    for (var tab in tabs) {
                      tab['isSelected'] = false;
                    }
                    tabs[value]['isSelected'] = true;
                  });
                },
                tabs: tabs
                    .map(
                      (Map<String, dynamic> tab) => Padding(
                        padding: EdgeInsets.only(
                          bottom: 25,
                          left: 10,
                          right: 10,
                        ),
                        child: Text(tab['name']),
                      ),
                    )
                    .toList(),
              ),
            ),
          Padding(
            padding: const EdgeInsets.only(top: 8),
            child: Row(
              children: [
                if (!isMobile)
                  Container(
                    margin: EdgeInsets.only(right: 24),
                    width: 1,
                    height: 22,
                    color: theme.grey78,
                  ),
                SvgPicture.asset(
                  AppConstants.settingsImage,
                  width: 24,
                  height: 24,
                  colorFilter: ColorFilter.mode(theme.white, BlendMode.srcIn),
                ),
                gapW24,
                SvgPicture.asset(
                  AppConstants.notificationIcon,
                  width: 24,
                  height: 24,
                  colorFilter: ColorFilter.mode(theme.white, BlendMode.srcIn),
                ),
                Container(
                  margin: EdgeInsets.only(right: 24, left: 24),
                  width: 1,
                  height: 22,
                  color: theme.grey78,
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 8),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 16,
                  backgroundImage: AssetImage(AppConstants.userImage),
                ),
                if (!isMobile)
                  Row(
                    children: [
                      gapW8,
                      Text(
                        'John Doe',
                        style: TextStyle(fontSize: 14, color: theme.white),
                      ),
                      gapW4,
                      SvgPicture.asset(
                        AppConstants.arrowDownIcon,
                        width: 24,
                        height: 24,
                        colorFilter: ColorFilter.mode(
                          theme.white,
                          BlendMode.srcIn,
                        ),
                      ),
                    ],
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
