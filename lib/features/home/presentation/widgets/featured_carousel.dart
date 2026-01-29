import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:my_nady_project/features/club/data/models/club_dto/datum.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'club_banner.dart';

class FeaturedCarousel extends StatelessWidget {
  final List<Datum> featuredClubs;
  const FeaturedCarousel({required this.featuredClubs, super.key});

  @override
  Widget build(BuildContext context) {
    if (featuredClubs.isEmpty) {
      return const SizedBox.shrink();
    }

    return CarouselSlider(
      options: CarouselOptions(
        height: 29.sh, // Using same height as original ClubBanner
        viewportFraction:
            1.0, // Set to 1.0 to behave more like the original banner
        enlargeCenterPage: false,
        autoPlay: featuredClubs.length > 1,
        autoPlayCurve: Curves.fastOutSlowIn,
        enableInfiniteScroll: featuredClubs.length > 1,
        autoPlayAnimationDuration: const Duration(seconds: 1),
      ),
      items: featuredClubs.map((club) {
        return Builder(
          builder: (BuildContext context) {
            return ClubBanner(club: club);
          },
        );
      }).toList(),
    );
  }
}
