import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:my_nady_project/core/helpers/assets_helper.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../../core/constants/app_sizes.dart';
import '../../../../core/router/app_router.dart';
import '../../../../core/shared/widgets/custom_text_field.dart';
import '../../../address_book/data/models/address_book_dto/address_data.dart';
import '../provider/home_search_provider.dart';
import '../../../address_book/presentation/provider/address_book_ui_service.dart';
import '../../../club/presentation/provider/map_location_service.dart';
import '../../../address_book/presentation/widgets/address_selection_bottom_sheet.dart';

class AppBarWithSearchTextField extends ConsumerStatefulWidget {
  const AppBarWithSearchTextField({super.key});

  @override
  ConsumerState<AppBarWithSearchTextField> createState() =>
      _AppBarWithSearchTextFieldState();
}

class _AppBarWithSearchTextFieldState
    extends ConsumerState<AppBarWithSearchTextField> {
  TextEditingController searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);

    ref.listen<AddressData?>(defaultAddressProvider, (previous, next) {
      if (next != null && next.location?.coordinates != null) {
        final coords = next.location?.coordinates;
        double? lat, lng;
        if (coords is List && coords.length >= 2) {
          lng = (coords[0] as num).toDouble();
          lat = (coords[1] as num).toDouble();
        } else if (coords is Map &&
            coords.containsKey('coordinates') &&
            coords['coordinates'] is List &&
            (coords['coordinates'] as List).length >= 2) {
          lng = (coords['coordinates'][0] as num).toDouble();
          lat = (coords['coordinates'][1] as num).toDouble();
        }

        if (lat != null && lng != null) {
          ref
              .read(mapLocationServiceProvider.notifier)
              .updateCurrentPosition(LatLng(lat, lng));
        }
      }
    });

    return Padding(
      padding: .only(left: 3.5.sw, right: 3.5.sw),
      child: Column(
        children: [
          Row(
            children: [
              GestureDetector(
                onTap: () {
                  showModalBottomSheet(
                    context: context,
                    isScrollControlled: true,
                    useRootNavigator: true,
                    useSafeArea: true,
                    isDismissible: true,
                    backgroundColor: Colors.transparent,
                    builder: (context) => const AddressSelectionBottomSheet(),
                  );
                },
                child: Column(
                  crossAxisAlignment: .start,
                  children: [
                    Padding(
                      padding: const .only(left: 4),
                      child: Text(
                        l10n.location,
                        style: theme.bodyMedium.copyWith(
                          color: theme.grey87,
                          fontSize: 12,
                        ),
                      ),
                    ),
                    gapH8,
                    Consumer(
                      builder: (context, ref, child) {
                        final defaultAddr = ref.watch(defaultAddressProvider);
                        final AsyncValue<String?>? currentLocationAddr = defaultAddr == null 
                            ? ref.watch(currentLocationAddressProvider) 
                            : null;

                        final addressDisplay = defaultAddr != null
                            ? ((defaultAddr.label?.isNotEmpty == true && defaultAddr.label != 'Current Location')
                                  ? defaultAddr.label!
                                  : '${defaultAddr.location?.city}, ${defaultAddr.location?.country}')
                            : currentLocationAddr!.when(
                                data: (addr) => (addr != null && addr.trim().isNotEmpty) ? addr : l10n.noAddressDetected,
                                loading: () => 'Detecting location...',
                                error: (err, stack) => l10n.noAddressDetected,
                              );

                        return Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            SvgPicture.asset(AssetsHelper.place2Icon),
                            gapW4,
                            Text(
                              addressDisplay,
                              style: theme.bodyMedium.copyWith(
                                color: theme.primary,
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                  ],
                ),
              ),
              const Spacer(),
              // GestureDetector(
              //   onTap: () {
              //     context.router.push(const NotificationRoute());
              //   },
              //   child: CircleAvatar(
              //     radius: 16,
              //     backgroundColor: theme.primary,
              //     child: SvgPicture.asset(
              //       AssetsHelper.notification1Icon,
              //       width: 20,
              //     ),
              //   ),
              // ),
            ],
          ),
          gapH16,
          Row(
            children: [
              Expanded(
                child: CustomTextField(
                  onChanged: (value) {
                    ref
                        .read(homeSearchQueryProvider.notifier)
                        .setQuery(value ?? '');
                  },
                  controller: searchController,
                  hint: l10n.searchForGym,
                  prefix: Padding(
                    padding: const .only(right: 6),
                    child: SvgPicture.asset(AssetsHelper.searchIcon, width: 12),
                  ),
                ),
              ),
              gapW8,
              GestureDetector(
                onTap: () {
                  context.router.push(const FilterRoute());
                },
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    color: theme.white,
                    borderRadius: .circular(12),
                    border: .all(width: 1, color: theme.primary),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 5,
                      vertical: 14,
                    ),
                    child: Row(
                      children: [
                        SvgPicture.asset(AssetsHelper.filterIcon),
                        gapW4,
                        Text(
                          l10n.filter,
                          style: theme.labelSmallSecondary.copyWith(
                            color: theme.primary,
                            fontWeight: .bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
