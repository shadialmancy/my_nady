import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../../core/router/app_router.dart';
import '../widgets/widgets.dart';

class DairyRecordUi extends StatelessWidget {
  const DairyRecordUi({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: .symmetric(horizontal: 3.sw),
      child: Column(
        children: List.generate(
          5,
          (index) => DairyRecordingCard(
            onTap: () {
              context.router.push(
                SubDairyRecordRoute(
                  title: "🧍‍Chest/Bench Exercises #1",
                  date: "July 23 2025",
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
