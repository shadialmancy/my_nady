import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../core/constants/app_sizes.dart';
import '../../../../core/router/app_router.dart';
import '../../../../core/shared/widgets/widgets.dart';
import '../provider/address_book_ui_service.dart';
import '../../domain/entities/address_book_entity.dart';

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
                          Navigator.pop(context);
                        },
                        leading: Icon(
                          Icons.location_on_outlined,
                          color: isDefault ? theme.primary : theme.grey,
                        ),
                        title: Text(
                          address.label ?? 'Address',
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
