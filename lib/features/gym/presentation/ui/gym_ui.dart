import 'package:flutter/material.dart';
import 'package:my_nady_project/features/gym/presentation/widget/widgets.dart';
import 'package:my_nady_project/features/home/presentation/widgets/fav_button.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../../core/constants/app_sizes.dart';

class GymUi extends StatefulWidget {
  const GymUi({super.key});

  @override
  State<GymUi> createState() => _GymUiState();
}

class _GymUiState extends State<GymUi> {
  @override
  Widget build(BuildContext context) {
    final (theme, _) = appSettingsRecord(context);
    return SingleChildScrollView(
      child: Column(
        children: [
          GymImagesSlider(),
          gapH32,
          Padding(
            padding: .symmetric(horizontal: 3.sw),
            child: Column(
              children: [
                Row(
                  children: [
                    CircleAvatar(radius: 15, backgroundColor: theme.gray600),
                    gapW12,
                    Text(
                      "Personal Trainer",
                      style: theme.titleMedium.copyWith(
                        color: theme.primary,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Spacer(),
                    DecoratedBox(
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: theme.fullBlack.withValues(alpha: 0.25),
                            blurRadius: 29,
                            offset: Offset(0, 4),
                          ),
                        ],
                      ),
                      child: FavoriteButton(),
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
