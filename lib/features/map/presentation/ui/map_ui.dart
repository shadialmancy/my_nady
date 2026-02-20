import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:my_nady_project/core/constants/app_sizes.dart';
import 'package:my_nady_project/core/router/app_router.dart';
import 'package:my_nady_project/core/shared/widgets/async_value_widget.dart';
import 'package:my_nady_project/features/club/presentation/provider/map_location_service.dart';
import 'package:my_nady_project/features/map/presentation/provider/map_ui_service.dart';

class MapUi extends ConsumerStatefulWidget {
  const MapUi({super.key});

  @override
  ConsumerState<MapUi> createState() => _MapScreenState();
}

class _MapScreenState extends ConsumerState<MapUi> {
  // ignore: unused_field
  GoogleMapController? _mapController;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      final locationService = ref.read(mapLocationServiceProvider.notifier);
      final hasPermission = await locationService.hasLocationPermission();
      if (!hasPermission) {
        final granted = await locationService.requestLocationPermission();
        if (granted) {
          ref.invalidate(mapLocationServiceProvider);
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);
    final locationState = ref.watch(mapLocationServiceProvider);

    return AsyncValueWidget(
      value: locationState,
      builder: (_) {
        final locationService = ref.read(mapLocationServiceProvider.notifier);

        if (locationService.currentPosition.latitude == 0 &&
            locationService.currentPosition.longitude == 0) {
          return Center(
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.location_off_outlined,
                    size: 64,
                    color: theme.primary,
                  ),
                  const SizedBox(height: 16),
                  Text(
                    l10n.allowingLocationHelpsUsServeYouBetter,
                    textAlign: TextAlign.center,
                    style: theme.titleMedium,
                  ),
                  const SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: () async {
                      final granted = await locationService
                          .requestLocationPermission();
                      if (granted) {
                        ref.invalidate(mapLocationServiceProvider);
                      } else {
                        await locationService.openLocationSettings();
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: theme.primary,
                      foregroundColor: theme.white,
                    ),
                    child: Text(l10n.grantAccessToLocation),
                  ),
                ],
              ),
            ),
          );
        }

        final mapData = ref.watch(mapUiServiceProvider);
        return AsyncValueWidget(
          value: mapData,
          builder: (clubEntity) {
            final clubs = clubEntity?.clubs ?? [];
            final markers = clubs
                .where(
                  (club) =>
                      club.location?.coordinates?.coordinates != null &&
                      club.location!.coordinates!.coordinates!.length >= 2,
                )
                .map((club) {
                  final coords = club.location!.coordinates!.coordinates!;
                  final lat = coords[1];
                  final lng = coords[0];
                  return Marker(
                    markerId: MarkerId(club.id ?? club.name ?? ''),
                    position: LatLng(lat, lng),
                    icon: BitmapDescriptor.defaultMarkerWithHue(
                      BitmapDescriptor.hueAzure,
                    ),
                    infoWindow: InfoWindow(
                      title: club.name,
                      snippet: club.location?.address,
                      onTap: () {
                        context.router.push(
                          ClubRoute(
                            id: club.id ?? '',
                            distance: club.distance?.toString() ?? '',
                          ),
                        );
                      },
                    ),
                  );
                })
                .toSet();

            return GoogleMap(
              initialCameraPosition: CameraPosition(
                target: locationService.currentPosition,
                zoom: 12,
              ),
              markers: markers,
              myLocationEnabled: true,
              myLocationButtonEnabled: true,
              zoomControlsEnabled: false,
              mapType: MapType.normal,
              onMapCreated: (controller) {
                _mapController = controller;
              },
              padding: const EdgeInsets.only(top: 10, right: 10),
            );
          },
        );
      },
    );
  }
}
