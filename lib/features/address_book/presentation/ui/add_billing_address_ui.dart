import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../../core/constants/app_sizes.dart';
import '../../../../core/shared/widgets/widgets.dart';
import '../../data/models/address_book_dto/address_data.dart';

import '../provider/address_book_ui_service.dart';
import '../../../settings/presentation/widgets/widgets.dart';

class AddBillingAddressUi extends ConsumerStatefulWidget {
  final AddressData? addressToEdit;
  const AddBillingAddressUi({super.key, this.addressToEdit});

  @override
  ConsumerState<AddBillingAddressUi> createState() =>
      _AddBillingAddressUiState();
}

class _AddBillingAddressUiState extends ConsumerState<AddBillingAddressUi> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController labelController = TextEditingController();
  final TextEditingController countryController = TextEditingController();
  final TextEditingController addressController = TextEditingController();
  final TextEditingController cityController = TextEditingController();
  bool isDefault = false;

  @override
  void initState() {
    super.initState();
    if (widget.addressToEdit != null) {
      labelController.text = widget.addressToEdit!.label ?? '';
      countryController.text = widget.addressToEdit!.location?.country ?? '';
      addressController.text = widget.addressToEdit!.location?.address ?? '';
      cityController.text = widget.addressToEdit!.location?.city ?? '';
      isDefault = widget.addressToEdit!.isDefault ?? false;
    }
  }

  @override
  void dispose() {
    labelController.dispose();
    countryController.dispose();
    addressController.dispose();
    cityController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);
    final uiService = ref.watch(addressBookUiServiceProvider);

    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: 3.sw, vertical: 20),
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            TitleWithCustomTextField(
              title: l10n.labelHint,
              hintText: l10n.label,
              controller: labelController,
              validator: (value) =>
                  value == null || value.isEmpty ? l10n.fieldRequired : null,
            ),
            gapH12,
            TitleWithCustomTextField(
              title: l10n.country,
              hintText: l10n.country,
              controller: countryController,
              validator: (value) =>
                  value == null || value.isEmpty ? l10n.fieldRequired : null,
            ),
            gapH12,
            TitleWithCustomTextField(
              title: l10n.address,
              hintText: l10n.address,
              controller: addressController,
              validator: (value) =>
                  value == null || value.isEmpty ? l10n.fieldRequired : null,
            ),
            gapH12,
            TitleWithCustomTextField(
              title: l10n.city,
              hintText: l10n.city,
              controller: cityController,
              validator: (value) =>
                  value == null || value.isEmpty ? l10n.fieldRequired : null,
            ),
            gapH12,
            Row(
              children: [
                Text(
                  l10n.setAsDefault,
                  style: theme.bodyMedium.copyWith(color: theme.primary),
                ),
                const Spacer(),
                CustomSwitch(
                  value: isDefault,
                  onChanged: (val) => setState(() => isDefault = val),
                  activeTrackColor: theme.secondary,
                ),
              ],
            ),
            gapH64,
            CustomButton(
              title: widget.addressToEdit != null
                  ? l10n.updateAddress
                  : l10n.addAddress,
              width: double.infinity,
              backgroundColor: theme.primary,
              isDisabled: uiService.isLoading,
              onPressed: () async {
                if (_formKey.currentState!.validate()) {
                  if (widget.addressToEdit != null) {
                    await ref
                        .read(addressBookUiServiceProvider.notifier)
                        .updateAddress(
                          id: widget.addressToEdit!.id!,
                          label: labelController.text,
                          country: countryController.text,
                          city: cityController.text,
                          address: addressController.text,
                          isDefault: isDefault,
                        );
                  } else {
                    await ref
                        .read(addressBookUiServiceProvider.notifier)
                        .createAddress(
                          label: labelController.text,
                          country: countryController.text,
                          city: cityController.text,
                          address: addressController.text,
                          isDefault: isDefault,
                        );
                  }
                  if (context.mounted) {
                    context.router.maybePop();
                  }
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
