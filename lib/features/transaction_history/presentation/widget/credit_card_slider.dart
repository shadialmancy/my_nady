import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import '../../../../core/constants/app_sizes.dart';
import 'widgets.dart';

class CreditCardSlider extends StatefulWidget {
  const CreditCardSlider({super.key});

  @override
  State<CreditCardSlider> createState() => _CreditCardSliderState();
}

class _CreditCardSliderState extends State<CreditCardSlider> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);
    return SizedBox(
      height: 230,
      child: Stack(
        alignment: .bottomCenter,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: CarouselSlider(
              items: List.generate(3, (index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: CreditCard(),
                );
              }),

              options: CarouselOptions(
                // pageSnapping: true,
                onPageChanged: (index, reason) {
                  setState(() {
                    currentIndex = index;
                  });
                },

                scrollPhysics: ClampingScrollPhysics(),
                viewportFraction: 1,
                aspectRatio: 16 / 9,
                initialPage: 0,
              ),
            ),
          ),

          Row(
            mainAxisAlignment: .center,
            crossAxisAlignment: .end,
            children: List.generate(3, (index) {
              return Container(
                margin: const EdgeInsets.symmetric(horizontal: 4, vertical: 8),
                width: 8,
                height: 8,
                decoration: BoxDecoration(
                  color: currentIndex == index ? theme.blue41 : theme.blueD1,
                  shape: BoxShape.circle,
                ),
              );
            }),
          ),
        ],
      ),
    );
  }
}
