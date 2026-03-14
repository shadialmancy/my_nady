import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../../core/constants/app_sizes.dart';
import '../../../../core/helpers/assets_helper.dart';
import '../../../../core/shared/widgets/widgets.dart';

class ClubImagesSlider extends StatefulWidget {
  const ClubImagesSlider({super.key, this.photos, this.name});

  final List<String>? photos;
  final String? name;

  @override
  State<ClubImagesSlider> createState() => _ClubImagesSliderState();
}

class _ClubImagesSliderState extends State<ClubImagesSlider> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    final (theme, _) = appSettingsRecord(context);
    final photoList = widget.photos ?? [];
    final displayList = photoList.isEmpty
        ? [AssetsHelper.gymImageHolder]
        : photoList;
    final isRtl = Localizations.localeOf(context).languageCode == 'ar';

    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        CarouselSlider.builder(
          itemCount: displayList.length,
          itemBuilder: (context, index, realIndex) {
            final photo = displayList[index];
            final heroTag = '${photo}_$realIndex';
            return Stack(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => FullScreenImageViewer(
                          images: displayList,
                          initialIndex: index,
                          initialHeroTag: heroTag,
                        ),
                      ),
                    );
                  },
                  child: Hero(
                    tag: heroTag,
                    child: photo.startsWith('http')
                        ? CachedNetworkImage(
                            imageUrl: photo,
                            height: 300,
                            fit: BoxFit.cover,
                            width: double.infinity,
                            fadeInDuration: Duration.zero,
                            fadeOutDuration: Duration.zero,
                            useOldImageOnUrlChange: true,
                            placeholder: (context, url) => Container(
                              height: 300,
                              width: double.infinity,
                              color: theme.grey87.withValues(alpha: 0.1),
                              child: const Center(
                                child: CircularProgressIndicator(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            errorWidget: (context, url, error) => Image.asset(
                              AssetsHelper.gymImageHolder,
                              height: 300,
                              fit: BoxFit.cover,
                              width: double.infinity,
                            ),
                          )
                        : Image.asset(
                            photo,
                            height: 300,
                            fit: BoxFit.cover,
                            width: double.infinity,
                          ),
                  ),
                ),
                IgnorePointer(
                  child: Container(
                    width: double.infinity,
                    height: 300,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          theme.fullBlack.withValues(alpha: 0.8),
                          Colors.transparent,
                          theme.fullBlack.withValues(alpha: 0.8),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            );
          },
          options: CarouselOptions(
            height: 300,
            pageSnapping: true,
            enableInfiniteScroll: true,
            onPageChanged: (index, reason) {
              setState(() {
                currentIndex = index;
              });
            },
            scrollPhysics: const ClampingScrollPhysics(),
            viewportFraction: 0.9,
            aspectRatio: 16 / 9,
            initialPage: 0,
          ),
        ),
        Positioned(
          top: 40,
          left: isRtl ? null : 0,
          right: isRtl ? 0 : null,
          child: Row(
            crossAxisAlignment: .center,
            children: [
              Padding(
                padding: .only(left: 5.sw, right: 5.sw),
                child: GestureDetector(
                  onTap: () {
                    context.router.maybePop();
                  },
                  child: Transform.flip(
                    flipX: isRtl,
                    child: SvgPicture.asset(
                      AssetsHelper.backIcon,
                      colorFilter: ColorFilter.mode(
                        theme.white,
                        BlendMode.srcIn,
                      ),
                    ),
                  ),
                ),
              ),

              Text(
                widget.name ?? "gym name",
                style: theme.titleMedium.copyWith(
                  color: theme.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        if (displayList.length > 1)
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(displayList.length, (index) {
              return Container(
                margin: const EdgeInsets.symmetric(horizontal: 1, vertical: 8),
                width: 8,
                height: 8,
                decoration: BoxDecoration(
                  color: currentIndex == index
                      ? theme.white
                      : Colors.transparent,
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
