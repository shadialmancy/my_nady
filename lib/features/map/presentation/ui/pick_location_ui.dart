import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:geocoding/geocoding.dart';
import '../../../../core/constants/app_sizes.dart';
import '../../../../core/shared/widgets/widgets.dart';
import '../../../address_book/presentation/provider/address_book_ui_service.dart';
import '../../../club/presentation/provider/map_location_service.dart';
import '../../../home/presentation/provider/home_ui_service.dart';

class PickLocationUi extends ConsumerStatefulWidget {
  const PickLocationUi({super.key});

  @override
  ConsumerState<PickLocationUi> createState() => _PickLocationUiState();
}

class _PickLocationUiState extends ConsumerState<PickLocationUi> {
  GoogleMapController? mapController;
  LatLng? _center;
  String _address = 'Loading...';
  String _city = '';
  String _country = '';
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _initLocation();
  }

  Future<void> _initLocation() async {
    try {
      final locationService = ref.read(mapLocationServiceProvider.notifier);
      await ref.read(mapLocationServiceProvider.future);

      LatLng? targetPosition = locationService.currentPosition;

      // If position is (0,0), try to get fresh location
      if (targetPosition.latitude == 0 && targetPosition.longitude == 0) {
        final freshPosition = await locationService.getCurrentLocation();
        if (freshPosition != null) {
          targetPosition = LatLng(
            freshPosition.latitude,
            freshPosition.longitude,
          );
        }
      }

      if (mounted) {
        setState(() {
          _center = targetPosition;
          _isLoading = false;
        });

        if (_center != null) {
          _updateAddress(_center!);
          // If map is already created, move to the center
          mapController?.animateCamera(
            CameraUpdate.newLatLngZoom(_center!, 15),
          );
        }
      }
    } catch (e) {
      if (mounted) {
        setState(() => _isLoading = false);
      }
    }
  }

  Future<void> _updateAddress(LatLng position) async {
    try {
      List<Placemark> placemarks = await placemarkFromCoordinates(
        position.latitude,
        position.longitude,
      );
      if (placemarks.isNotEmpty) {
        final place = placemarks.first;
        setState(() {
          _address =
              '${place.street ?? ""}, ${place.subLocality ?? ""}, ${place.locality ?? ""}';
          _city =
              place.locality ??
              place.subAdministrativeArea ??
              place.subLocality ??
              place.street ??
              '';
          _country = place.country ?? '';
        });
      }
    } catch (e) {
      setState(() {
        _address = 'Unknown location';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);

    if (_isLoading) {
      return const Center(child: CircularProgressIndicator());
    }

    return Stack(
      children: [
        GoogleMap(
          initialCameraPosition: CameraPosition(
            target: _center ?? const LatLng(0, 0),
            zoom: 15,
          ),
          onMapCreated: (controller) {
            mapController = controller;
            if (_center != null) {
              mapController!.animateCamera(
                CameraUpdate.newLatLngZoom(_center!, 15),
              );
            }
          },
          onCameraMove: (position) {
            _center = position.target;
          },
          onCameraIdle: () {
            if (_center != null) {
              _updateAddress(_center!);
            }
          },
          myLocationEnabled: true,
          myLocationButtonEnabled: true,
          padding: const EdgeInsets.only(bottom: 150),
        ),
        Center(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 35),
            child: Icon(Icons.location_on, size: 40, color: theme.primary),
          ),
        ),
        Positioned(
          top: MediaQuery.of(context).padding.top + 10,
          left: 10,
          child: GestureDetector(
            onTap: () => context.router.maybePop(),
            child: CircleAvatar(
              backgroundColor: theme.white,
              child: Icon(Icons.arrow_back, color: theme.primary),
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Container(
            padding: const EdgeInsets.all(AppSizes.p20),
            decoration: BoxDecoration(
              color: theme.white,
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(24),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withValues(alpha: 0.1),
                  blurRadius: 10,
                  offset: const Offset(0, -5),
                ),
              ],
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  children: [
                    Icon(Icons.location_on_outlined, color: theme.primary),
                    gapW8,
                    Expanded(
                      child: Text(
                        _address,
                        style: theme.bodyMedium,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
                gapH20,
                CustomButton(
                  onPressed: _showAddAddressDetails,
                  title: l10n.confirm,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  void _showAddAddressDetails() {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) => _AddAddressDetailsBottomSheet(
        latitude: _center!.latitude,
        longitude: _center!.longitude,
        address: _address,
        city: _city,
        country: _country,
      ),
    );
  }
}

class _AddAddressDetailsBottomSheet extends ConsumerStatefulWidget {
  final double latitude;
  final double longitude;
  final String address;
  final String city;
  final String country;

  const _AddAddressDetailsBottomSheet({
    required this.latitude,
    required this.longitude,
    required this.address,
    required this.city,
    required this.country,
  });

  @override
  ConsumerState<_AddAddressDetailsBottomSheet> createState() =>
      __AddAddressDetailsBottomSheetState();
}

class __AddAddressDetailsBottomSheetState
    extends ConsumerState<_AddAddressDetailsBottomSheet> {
  final _labelController = TextEditingController();
  bool _isDefault = true;

  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);

    return AsyncValueWidget(
      value: ref.watch(addressBookUiServiceProvider),
      builder: (_) {
        return Container(
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom + AppSizes.p20,
            top: AppSizes.p20,
            left: AppSizes.p20,
            right: AppSizes.p20,
          ),
          decoration: BoxDecoration(
            color: theme.white,
            borderRadius: const BorderRadius.vertical(top: Radius.circular(24)),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Center(
                child: Container(
                  width: 40,
                  height: 4,
                  decoration: BoxDecoration(
                    color: theme.grey,
                    borderRadius: BorderRadius.circular(2),
                  ),
                ),
              ),
              gapH16,
              Text(
                l10n.addAddress,
                style: theme.headlineSmall,
                textAlign: TextAlign.center,
              ),
              gapH20,
              CustomTextField(
                controller: _labelController,
                hint: l10n.addressLabel,
              ),
              gapH16,
              Row(
                children: [
                  Checkbox(
                    value: _isDefault,
                    onChanged: (val) =>
                        setState(() => _isDefault = val ?? false),
                    activeColor: theme.primary,
                  ),
                  Text(l10n.setAsDefaultAddress),
                ],
              ),
              gapH20,
              CustomButton(
                onPressed: () async {
                  if (_labelController.text.isEmpty) return;
                  await ref
                      .read(addressBookUiServiceProvider.notifier)
                      .createAddress(
                        label: _labelController.text,
                        country: widget.country,
                        city: widget.city,
                        address: widget.address,
                        latitude: widget.latitude,
                        longitude: widget.longitude,
                        isDefault: _isDefault,
                      );
                  ref.invalidate(homeUiServiceProvider);
                  if (context.mounted) {
                    context.router.popUntilRoot();
                  }
                },
                title: l10n.save,
              ),
            ],
          ),
        );
      },
    );
  }
}
