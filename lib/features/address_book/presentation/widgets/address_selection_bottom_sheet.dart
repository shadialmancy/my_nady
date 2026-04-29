import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:geocoding/geocoding.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import '../../../../core/constants/app_sizes.dart';
import '../../../../core/router/app_router.dart';
import '../../../../core/shared/widgets/widgets.dart';
import '../provider/address_book_ui_service.dart';
import '../../domain/entities/address_book_entity.dart';
import '../../../club/presentation/provider/map_location_service.dart';
import '../../../home/presentation/provider/home_ui_service.dart';

class AddressSelectionBottomSheet extends ConsumerWidget {
  const AddressSelectionBottomSheet({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final (theme, l10n) = appSettingsRecord(context);
    final uiService = ref.watch(addressBookUiServiceProvider);

    return Container(
      decoration: BoxDecoration(
        color: theme.white,
        borderRadius: const BorderRadius.vertical(top: Radius.circular(24)),
      ),
      padding: EdgeInsets.only(
        bottom: MediaQuery.of(context).padding.bottom + AppSizes.p20,
        top: AppSizes.p20,
        left: AppSizes.p20,
        right: AppSizes.p20,
      ),
      child: SingleChildScrollView(
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
              l10n.location,
              style: theme.headlineSmall,
              textAlign: TextAlign.center,
            ),
            gapH20,
            AsyncValueWidget<AddressBookEntity?>(
              value: uiService,
              builder: (addressBook) {
                final addresses = addressBook?.data ?? [];
                return Column(
                  children: [
                    if (addresses.isEmpty)
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: AppSizes.p20,
                        ),
                        child: Text(
                          l10n.noAddressDetected,
                          style: theme.bodyMedium.copyWith(color: theme.grey9C),
                        ),
                      ),
                    ...addresses.map((address) {
                      final isDefault = address.isDefault == true;
                      return ListTile(
                        onTap: () {
                          ref
                              .read(addressBookUiServiceProvider.notifier)
                              .setDefaultAddress(address.id!);
                          ref.read(homeUiServiceProvider.notifier).setLoading();
                          Navigator.pop(context);
                        },
                        leading: Icon(
                          Icons.location_on_outlined,
                          color: isDefault ? theme.primary : theme.grey,
                        ),
                        title: Text(
                          (address.label?.isNotEmpty == true && address.label != 'Current Location')
                              ? address.label!
                              : (address.location?.address?.isNotEmpty == true 
                                  ? address.location!.address! 
                                  : 'Current Location'),
                          style: theme.titleSmall.copyWith(
                            fontWeight: isDefault ? FontWeight.bold : null,
                          ),
                        ),
                        subtitle: Text(
                          '${address.location?.city}, ${address.location?.country}',
                          style: theme.bodySmall,
                        ),
                        trailing: isDefault
                            ? Icon(Icons.check_circle, color: theme.secondary)
                            : null,
                      );
                    }),
                    gapH12,
                    const Divider(),
                    gapH12,
                    ListTile(
                      onTap: () async {
                        Navigator.pop(context);
                        ref.read(homeUiServiceProvider.notifier).setLoading();
                        final mapService = ref.read(
                          mapLocationServiceProvider.notifier,
                        );
                        final pos = await mapService.getCurrentLocation();

                        if (pos != null) {
                          mapService.updateCurrentPosition(
                            LatLng(pos.latitude, pos.longitude),
                          );

                          String city = 'Unknown City';
                          String country = 'Unknown Country';
                          String address = 'Current Location';

                          try {
                            List<Placemark> placemarks =
                                await placemarkFromCoordinates(
                                  pos.latitude,
                                  pos.longitude,
                                );
                            if (placemarks.isNotEmpty) {
                              final place = placemarks.first;
                              city = place.locality?.isNotEmpty == true
                                  ? place.locality!
                                  : (place.subAdministrativeArea?.isNotEmpty ==
                                            true
                                        ? place.subAdministrativeArea!
                                        : (place.administrativeArea ??
                                              'Unknown City'));
                              country = place.country ?? 'Unknown Country';
                              address = place.street ?? 'Current Location';
                            }
                          } catch (_) {}

                          final existing = addresses
                              .where((a) => a.label == 'Current Location')
                              .firstOrNull;

                          if (existing != null) {
                            ref
                                .read(addressBookUiServiceProvider.notifier)
                                .updateAddress(
                                  id: existing.id!,
                                  country: country,
                                  city: city,
                                  address: address.isNotEmpty
                                      ? address
                                      : 'Current Location',
                                  isDefault: true,
                                );
                          } else {
                            ref
                                .read(addressBookUiServiceProvider.notifier)
                                .createAddress(
                                  label: 'Current Location',
                                  country: country,
                                  city: city,
                                  address: address.isNotEmpty
                                      ? address
                                      : 'Current Location',
                                  latitude: pos.latitude,
                                  longitude: pos.longitude,
                                  isDefault: true,
                                );
                          }
                        }
                      },
                      leading: Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: theme.primary.withValues(alpha: 0.1),
                          shape: BoxShape.circle,
                        ),
                        child: Icon(Icons.my_location, color: theme.primary),
                      ),
                      title: Text(
                        'Current Location',
                        style: theme.titleSmall.copyWith(color: theme.primary),
                      ),
                    ),
                    ListTile(
                      onTap: () {
                        Navigator.pop(context);
                        context.router.push(const PickLocationRoute());
                      },
                      leading: Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: theme.primary.withValues(alpha: 0.1),
                          shape: BoxShape.circle,
                        ),
                        child: Icon(Icons.add, color: theme.primary),
                      ),
                      title: Text(
                        l10n.addAddress,
                        style: theme.titleSmall.copyWith(color: theme.primary),
                      ),
                    ),
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
