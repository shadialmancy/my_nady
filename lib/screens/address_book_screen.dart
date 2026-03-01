import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'package:responsive_builder/responsive_builder.dart';
import '../../core/helpers/assets_helper.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../features/address_book/presentation/ui/address_book_list_ui.dart';
import '../core/router/app_router.dart';
import '../core/constants/app_sizes.dart';

@RoutePage()
class AddressBookScreen extends StatelessWidget {
  const AddressBookScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);

    return Scaffold(
      backgroundColor: theme.primaryBackground,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leadingWidth: 50,
        toolbarHeight: 80,
        centerTitle: true,
        title: Text(
          l10n.addressBook,
          style: theme.titleMedium.copyWith(color: theme.primary),
        ),

        leading: Padding(
          padding: EdgeInsets.only(left: 5.sw),
          child: GestureDetector(
            onTap: () => context.router.maybePop(),
            child: SvgPicture.asset(AssetsHelper.backIcon),
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 5.sw),
            child: IconButton(
              icon: Icon(Icons.add, color: theme.primary),
              onPressed: () => context.pushRoute(AddBillingAddressRoute()),
            ),
          ),
        ],
      ),
      body: const AddressBookListUi(),
    );
  }
}
