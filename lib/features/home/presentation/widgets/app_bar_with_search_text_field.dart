import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_nady_project/core/helpers/assets_helper.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../../core/constants/app_sizes.dart';
import '../../../../core/router/app_router.dart';
import '../../../../core/shared/widgets/custom_text_field.dart';
import '../provider/home_search_provider.dart';
import '../provider/home_ui_service.dart';
import '../../../address_book/data/models/address_book_dto/address_data.dart';
import '../../../address_book/presentation/provider/address_book_ui_service.dart';

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

    return Padding(
      padding: .only(left: 3.5.sw, right: 3.5.sw),
      child: Column(
        children: [
          Row(
            children: [
              Column(
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
                      final addressBookAsync = ref.watch(
                        addressBookUiServiceProvider,
                      );
                      final addresses = addressBookAsync.value?.data ?? [];

                      final addressDisplay = defaultAddr != null
                          ? '${defaultAddr.location?.city}, ${defaultAddr.location?.country}'
                          : l10n.noAddressSelected;

                      return PopupMenuButton<dynamic>(
                        padding: EdgeInsets.zero,
                        onSelected: (value) async {
                          if (value is AddressData) {
                            await ref
                                .read(addressBookUiServiceProvider.notifier)
                                .setDefaultAddress(value.id!);
                            ref.invalidate(homeUiServiceProvider);
                          } else if (value == 'manage') {
                            context.router.push(const AddressBookRoute());
                          }
                        },
                        itemBuilder: (context) => [
                          ...addresses.map(
                            (address) => PopupMenuItem<AddressData>(
                              value: address,
                              child: Row(
                                children: [
                                  Icon(
                                    address.isDefault == true
                                        ? Icons.check_circle
                                        : Icons.circle_outlined,
                                    size: 18,
                                    color: theme.primary,
                                  ),
                                  gapW8,
                                  Expanded(
                                    child: Text(
                                      address.label ?? '',
                                      style: theme.bodyMedium,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const PopupMenuDivider(),
                          PopupMenuItem<String>(
                            value: 'manage',
                            child: Row(
                              children: [
                                Icon(
                                  Icons.settings_outlined,
                                  size: 18,
                                  color: theme.primary,
                                ),
                                gapW8,
                                Text(l10n.addressBook, style: theme.bodyMedium),
                              ],
                            ),
                          ),
                        ],
                        child: Row(
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
                            Icon(
                              Icons.keyboard_arrow_down,
                              size: 18,
                              color: theme.primary,
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ],
              ),
              const Spacer(),
              CircleAvatar(
                radius: 16,
                backgroundColor: theme.primary,
                child: SvgPicture.asset(
                  AssetsHelper.notification1Icon,
                  width: 20,
                ),
              ),
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
