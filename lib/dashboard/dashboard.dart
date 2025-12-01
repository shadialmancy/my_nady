import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_nady_project/core/constants/app_sizes.dart';
import 'package:my_nady_project/core/helpers/assets_helper.dart';
import 'package:my_nady_project/core/router/app_router.dart';

@RoutePage()
class DashboardLayoutScreen extends StatefulWidget {
  const DashboardLayoutScreen({super.key});

  @override
  State<DashboardLayoutScreen> createState() => _DashboardLayoutScreenState();
}

class _DashboardLayoutScreenState extends State<DashboardLayoutScreen>
    with TickerProviderStateMixin {
  List routes = const [
    HomeRoute(),
    HomeRoute(),
    HomeRoute(),
    HomeRoute(),
    HomeRoute(),
  ];
  List<String> icons = [
    AssetsHelper.homeIcon,
    AssetsHelper.heart2Icon,
    AssetsHelper.transfersIcon,
    AssetsHelper.notebookIcon,
    AssetsHelper.profileIcon,
  ];
  late double position;
  int selected = 0;
  double horizontalPadding = 30.0;
  int noOfIcons = 5;
  late AnimationController controller;
  late Animation<double> animation;

  @override
  void initState() {
    controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 375),
    );
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.router.replace(routes[0]);
    });

    super.initState();
  }

  @override
  void didChangeDependencies() {
    animation = Tween(
      begin: getEndPosition(0, horizontalPadding, noOfIcons),
      end: getEndPosition(0, horizontalPadding, noOfIcons),
    ).animate(controller);
    position = getEndPosition(0, horizontalPadding, noOfIcons);
    super.didChangeDependencies();
  }

  double getEndPosition(int index, double horizontalPadding, int noOfIcons) {
    double totalPadding = 2 * horizontalPadding;
    double valueToOmit = totalPadding;

    return (((MediaQuery.of(context).size.width - valueToOmit) / noOfIcons) *
                index +
            horizontalPadding) +
        (((MediaQuery.of(context).size.width - valueToOmit) / noOfIcons) / 2) -
        70;
  }

  void animateDrop(int index) {
    animation = Tween(
      begin: position,
      end: getEndPosition(index, horizontalPadding, noOfIcons),
    ).animate(CurvedAnimation(parent: controller, curve: Curves.ease));
    controller.forward().then((value) {
      position = getEndPosition(index, horizontalPadding, noOfIcons);
      controller.dispose();
      controller = AnimationController(
        vsync: this,
        duration: const Duration(milliseconds: 575),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    final (theme, _) = appSettingsRecord(context);
    return Scaffold(
      backgroundColor: theme.primaryBackground,
      body: SafeArea(
        top: false,
        child: Stack(
          children: [
            AutoRouter(),
            Positioned(
              bottom: 0,
              child: AnimatedBuilder(
                animation: controller,
                builder: (context, child) {
                  return CustomPaint(
                    painter: AppBarPainter(animation.value),
                    size: Size(MediaQuery.of(context).size.width, 80.0),
                    child: SizedBox(
                      height: 120.0,
                      width: MediaQuery.of(context).size.width,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: horizontalPadding,
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: icons.map<Widget>((icon) {
                            return GestureDetector(
                              onTap: () {
                                setState(() {
                                  animateDrop(icons.indexOf(icon));
                                  selected = icons.indexOf(icon);
                                });
                                context.router.replace(routes[selected]);
                              },
                              child: AnimatedContainer(
                                duration: const Duration(milliseconds: 375),

                                curve: Curves.ease,
                                height: 105,
                                width:
                                    (MediaQuery.of(context).size.width -
                                        (2 * horizontalPadding)) /
                                    5,
                                padding: const EdgeInsets.only(
                                  top: 17.5,
                                  bottom: 22.5,
                                ),
                                alignment: selected == icons.indexOf(icon)
                                    ? Alignment.topCenter
                                    : Alignment.bottomCenter,
                                child: SizedBox(
                                  height: 35.0,
                                  width: 35.0,
                                  child: Center(
                                    child: AnimatedSwitcher(
                                      duration: const Duration(
                                        milliseconds: 575,
                                      ),
                                      switchInCurve: Curves.ease,
                                      switchOutCurve: Curves.ease,
                                      child: SvgPicture.asset(icon),
                                    ),
                                  ),
                                ),
                              ),
                            );
                          }).toList(),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class AppBarPainter extends CustomPainter {
  double x;

  AppBarPainter(this.x);

  double start = 40.0;
  double end = 120;

  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..color = const Color(0xFF152A61)
      ..style = PaintingStyle.fill;
    var secondaryPaint = Paint()
      ..color = const Color(0xffFF6B2C)
      ..style = PaintingStyle.fill;

    Path path = Path();
    path.moveTo(0.0, start);

    /// DROP paths, included X for animation
    path.lineTo((x) < 20.0 ? 20.0 : x, start);
    path.quadraticBezierTo(20.0 + x, start, 30.0 + x, start + 30.0);
    path.quadraticBezierTo(40.0 + x, start + 55.0, 70.0 + x, start + 55.0);
    path.quadraticBezierTo(100.0 + x, start + 55.0, 110.0 + x, start + 30.0);
    path.quadraticBezierTo(
      120.0 + x,
      start,
      (140.0 + x) > (size.width - 20.0) ? (size.width - 20.0) : 140.0 + x,
      start,
    );
    path.lineTo(size.width - 20.0, start);

    /// Box with BorderRadius
    path.quadraticBezierTo(size.width, start, size.width, start + 25.0);
    path.lineTo(size.width, end - 25.0);
    path.quadraticBezierTo(size.width, end, size.width, end);
    path.lineTo(25.0, end);
    path.quadraticBezierTo(0.0, end, 0.0, end);
    path.lineTo(0.0, start + 25.0);
    path.quadraticBezierTo(0.0, start, 20.0, start);
    path.close();

    canvas.drawPath(path, paint);

    /// Circle to show at the top of the drop
    canvas.drawCircle(Offset(x + 70.0, 50.0), 35.0, secondaryPaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
