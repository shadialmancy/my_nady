import 'package:auto_route/auto_route.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../../core/constants/app_sizes.dart';
import '../../../../core/helpers/assets_helper.dart';

class ClubImagesSlider extends StatefulWidget {
  const ClubImagesSlider({super.key});

  @override
  State<ClubImagesSlider> createState() => _ClubImagesSliderState();
}

class _ClubImagesSliderState extends State<ClubImagesSlider> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    final (theme, _) = appSettingsRecord(context);
    return Stack(
      alignment: .bottomCenter,
      children: [
        CarouselSlider(
          items: List.generate(3, (index) {
            return Stack(
              children: [
                Image.asset(
                  AssetsHelper.gymImageHolder,
                  height: 300,
                  fit: .cover,
                  width: .infinity,
                ),
                Container(
                  width: .infinity,
                  height: 300,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: .topCenter,
                      end: .bottomCenter,
                      colors: [
                        theme.fullBlack.withValues(alpha: 0.8),
                        Colors.transparent,
                        theme.fullBlack.withValues(alpha: 0.8),
                      ],
                    ),
                  ),
                ),
              ],
            );
          }),
          options: CarouselOptions(
            height: 300,
            pageSnapping: true,
            onPageChanged: (index, reason) {
              setState(() {
                currentIndex = index;
              });
            },
            scrollPhysics: ClampingScrollPhysics(),
            viewportFraction: 0.9,
            aspectRatio: 16 / 9,
            initialPage: 0,
          ),
        ),
        Positioned(
          top: 40,
          left: 0,
          child: Row(
            crossAxisAlignment: .start,
            children: [
              Padding(
                padding: .only(left: 5.sw),
                child: GestureDetector(
                  onTap: () {
                    context.router.maybePop();
                  },
                  child: SvgPicture.asset(
                    AssetsHelper.backIcon,
                    colorFilter: ColorFilter.mode(theme.white, BlendMode.srcIn),
                  ),
                ),
              ),
              gapW8,
              Text(
                "gym name",
                style: theme.titleMedium.copyWith(color: theme.white),
              ),
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(3, (index) {
            return Container(
              margin: const EdgeInsets.symmetric(horizontal: 1, vertical: 8),
              width: 8,
              height: 8,
              decoration: BoxDecoration(
                color: currentIndex == index ? theme.white : Colors.transparent,
                shape: BoxShape.circle,
                border: Border.all(color: Colors.white, width: 0.5),
              ),
            );
          }),
        ),
      ],
    );
  }
}
