import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../../core/constants/app_sizes.dart';
import '../../../../core/router/app_router.dart';
import '../../../../core/shared/widgets/widgets.dart';
import '../provider/address_book_ui_service.dart';
import '../../domain/entities/address_book_entity.dart';

class AddressBookListUi extends ConsumerWidget {
  const AddressBookListUi({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final (theme, l10n) = appSettingsRecord(context);
    final uiService = ref.watch(addressBookUiServiceProvider);

    return AsyncValueWidget<AddressBookEntity?>(
      value: uiService,

      builder: (addressBook) {
        final addresses = addressBook?.data ?? [];
        return RefreshIndicator(
          onRefresh: () =>
              ref.read(addressBookUiServiceProvider.notifier).fetchAddresses(),
          child: addresses.isEmpty
              ? LayoutBuilder(
                  builder: (context, constraints) => SingleChildScrollView(
                    physics: const AlwaysScrollableScrollPhysics(),
                    child: ConstrainedBox(
                      constraints: BoxConstraints(
                        minHeight: constraints.maxHeight,
                      ),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.location_off_outlined,
                              size: 64,
                              color: theme.grey9C,
                            ),
                            gapH16,
                            Text(
                              'No addresses found',
                              style: theme.titleMedium.copyWith(
                                color: theme.grey9C,
                              ),
                            ),
                            gapH24,
                            CustomButton(
                              title: 'Add New Address',
                              backgroundColor: theme.primary,
                              onPressed: () =>
                                  context.pushRoute(AddBillingAddressRoute()),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                )
              : ListView.separated(
                  padding: EdgeInsets.symmetric(horizontal: 5.sw, vertical: 20),
                  itemCount: addresses.length,
                  separatorBuilder: (_, _) => gapH16,
                  itemBuilder: (context, index) {
                    final address = addresses[index];
                    return Container(
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: theme.white,
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(
                          color: address.isDefault == true
                              ? theme.secondary
                              : theme.primary.withValues(alpha: 0.1),
                          width: address.isDefault == true ? 2 : 1,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: theme.grey9C.withValues(alpha: 0.1),
                            blurRadius: 8,
                            offset: const Offset(0, 2),
                          ),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: Row(
                                  children: [
                                    Text(
                                      address.label?.toUpperCase() ?? 'ADDRESS',
                                      style: theme.titleSmall.copyWith(
                                        color: theme.primary,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    if (address.isDefault == true) ...[
                                      gapW8,
                                      Container(
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 8,
                                          vertical: 2,
                                        ),
                                        decoration: BoxDecoration(
                                          color: theme.secondary,
                                          borderRadius: BorderRadius.circular(
                                            4,
                                          ),
                                        ),
                                        child: Text(
                                          'DEFAULT',
                                          style: theme.labelSmall.copyWith(
                                            color: theme.white,
                                            fontSize: 10,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ],
                                ),
                              ),
                              Row(
                                children: [
                                  IconButton(
                                    icon: Icon(
                                      Icons.edit_outlined,
                                      color: theme.primary,
                                      size: 20,
                                    ),
                                    onPressed: () => context.pushRoute(
                                      AddBillingAddressRoute(
                                        addressToEdit: address,
                                      ),
                                    ),
                                  ),
                                  IconButton(
                                    icon: Icon(
                                      Icons.delete_outline,
                                      color: theme.error,
                                      size: 20,
                                    ),
                                    onPressed: () => _showDeleteDialog(
                                      context,
                                      ref,
                                      address.id!,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          gapH8,
                          Text(
                            '${address.location?.address}, ${address.location?.city}',
                            style: theme.bodyMedium.copyWith(
                              color: theme.primaryText,
                            ),
                          ),
                          Text(
                            address.location?.country ?? '',
                            style: theme.bodySmall.copyWith(
                              color: theme.grey9C,
                            ),
                          ),
                          if (address.isDefault != true)
                            TextButton(
                              onPressed: () => ref
                                  .read(addressBookUiServiceProvider.notifier)
                                  .setDefaultAddress(address.id!),
                              child: Text(
                                'Set as Default',
                                style: theme.labelMedium.copyWith(
                                  color: theme.secondary,
                                ),
                              ),
                            ),
                        ],
                      ),
                    );
                  },
                ),
        );
      },
    );
  }

  void _showDeleteDialog(BuildContext context, WidgetRef ref, String id) {
    showDialog(
      context: context,
      builder: (context) {
        final (theme, _) = appSettingsRecord(context);
        return AlertDialog(
          title: const Text('Delete Address'),
          content: const Text('Are you sure you want to delete this address?'),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                ref
                    .read(addressBookUiServiceProvider.notifier)
                    .deleteAddress(id);
                Navigator.pop(context);
              },
              child: Text('Delete', style: TextStyle(color: theme.error)),
            ),
          ],
        );
      },
    );
  }
}
