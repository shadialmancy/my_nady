import 'dart:developer';

import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'map_location_service.g.dart';

@riverpod
FutureOr<String?> currentLocationAddress(Ref ref) async {
  // Ensure the service is initialized
  await ref.watch(mapLocationServiceProvider.future);

  final service = ref.read(mapLocationServiceProvider.notifier);
  final position = service.position;
  log(position.toString());
  if (position != null) {
    return await service.getAddressFromLatLng(
      position.latitude,
      position.longitude,
    );
  } else {
    // If not already in service.position, try one more time with a timeout
    try {
      final p = await service.getCurrentLocation();
      if (p != null) {
        return await service.getAddressFromLatLng(p.latitude, p.longitude);
      }
    } catch (_) {
      return null;
    }
  }
  return null;
}

@Riverpod(keepAlive: true)
class MapLocationService extends _$MapLocationService {
  @override
  Future<void> build() async {
    position = await getCurrentLocation();
    log('MapLocationService build finished with: $position');
    currentPosition = LatLng(position?.latitude ?? 0, position?.longitude ?? 0);
  }

  Position? position;
  LatLng currentPosition = const LatLng(0, 0);

  /// Get the current location of the user
  Future<Position?> getCurrentLocation() async {
    try {
      // Check if location services are enabled
      bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
      log('Location services enabled: $serviceEnabled');
      if (!serviceEnabled) {
        // Location services are not enabled, return null
        return null;
      }

      // Check location permissions
      LocationPermission permission = await Geolocator.checkPermission();
      log('Initial Permission status: $permission');
      if (permission == LocationPermission.denied) {
        permission = await Geolocator.requestPermission();
        log('Permission status after request: $permission');
        if (permission == LocationPermission.denied) {
          // Permissions are denied, return null
          return null;
        }
      }

      if (permission == LocationPermission.deniedForever) {
        // Permissions are denied forever, return null
        return null;
      }

      // First try to get last known position (faster)
      Position? position = await Geolocator.getLastKnownPosition();
      if (position != null) return position;

      // If no last known position, request current position
      position = await Geolocator.getCurrentPosition(
        locationSettings: const LocationSettings(
          accuracy: LocationAccuracy.medium,
          timeLimit: Duration(seconds: 10),
        ),
      );

      return position;
    } catch (e) {
      log('Error getting location: $e');
      return null;
    }
  }

  /// Check if location permission is granted
  Future<bool> hasLocationPermission() async {
    LocationPermission permission = await Geolocator.checkPermission();
    return permission == LocationPermission.always ||
        permission == LocationPermission.whileInUse;
  }

  /// Request location permission
  Future<bool> requestLocationPermission() async {
    LocationPermission permission = await Geolocator.requestPermission();
    return permission == LocationPermission.always ||
        permission == LocationPermission.whileInUse;
  }

  /// Check if location services are enabled
  Future<bool> isLocationServiceEnabled() async {
    return await Geolocator.isLocationServiceEnabled();
  }

  /// Open location settings
  Future<bool> openLocationSettings() async {
    return await Geolocator.openLocationSettings();
  }

  /// Get the address (city, country) from latitude and longitude
  Future<String?> getAddressFromLatLng(double lat, double lng) async {
    try {
      List<Placemark> placemarks = await placemarkFromCoordinates(lat, lng);

      if (placemarks.isNotEmpty) {
        final Placemark place = placemarks.first;
        final city = place.locality?.isNotEmpty == true
            ? place.locality
            : (place.subAdministrativeArea?.isNotEmpty == true
                  ? place.subAdministrativeArea
                  : (place.administrativeArea?.isNotEmpty == true
                        ? place.administrativeArea
                        : ''));
        return (city?.isNotEmpty == true && place.country?.isNotEmpty == true)
            ? '$city, ${place.country}'
            : (city ?? place.country ?? '');
      }
    } catch (e) {
      return null;
    }
    return null;
  }
}
