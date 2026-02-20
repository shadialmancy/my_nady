import 'package:auto_route/auto_route.dart';
import 'package:credit_card_form/credit_card_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_nady_project/core/constants/app_sizes.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../../core/helpers/assets_helper.dart';
import '../../../../core/shared/widgets/widgets.dart';
import '../../../../core/shared/widgets/app_toast.dart';
import '../../../transaction_history/data/models/payment_method_request_dto/payment_method_request_dto.dart';
import '../../../transaction_history/presentation/provider/payment_method_ui_service.dart';
// import '../widgets/widgets.dart';

class AddCreditCardUi extends ConsumerStatefulWidget {
  const AddCreditCardUi({super.key, required this.onClick});
  final Function() onClick;

  @override
  ConsumerState<AddCreditCardUi> createState() => _AddCreditCardUiState();
}

class _AddCreditCardUiState extends ConsumerState<AddCreditCardUi> {
  final CardDataInputController _cardController = CardDataInputController();
  bool _isSubmitting = false;

  Future<void> _onConfirm() async {
    final card = _cardController.value;
    final cardNumberRaw = (card.cardNumber).replaceAll(' ', '');
    final holderName = (card.cardHolderName).trim();
    final expired = (card.expiredDate).trim(); // format: MM/YY

    if (cardNumberRaw.length < 12 || holderName.isEmpty || expired.isEmpty) {
      AppToast.errorToast('Please fill all card details correctly');
      return;
    }

    final parts = expired.split('/');
    if (parts.length != 2) {
      AppToast.errorToast('Invalid expiry date');
      return;
    }

    final month = int.tryParse(parts[0]);
    final yearShort = int.tryParse(parts[1]);
    if (month == null || yearShort == null) {
      AppToast.errorToast('Invalid expiry date');
      return;
    }

    final expiryMonth = month;
    final expiryYear = yearShort >= 100 ? yearShort : 2000 + yearShort;
    final last4 = cardNumberRaw.length >= 4
        ? cardNumberRaw.substring(cardNumberRaw.length - 4)
        : cardNumberRaw;

    final request = PaymentMethodRequestDto(
      gatewayCardId: cardNumberRaw,
      cardBrand: card.cardType.toString(),
      last4Digits: last4,
      expiryMonth: expiryMonth,
      expiryYear: expiryYear,
      cardholderName: holderName,
      gatewayCustomerId: '',
    );

    setState(() => _isSubmitting = true);
    try {
      await ref
          .read(paymentMethodUiServiceProvider.notifier)
          .savePaymentMethod(request);

      // If we reached here, status code was 200 or 201
      AppToast.successToast('Card added successfully');
      widget.onClick();
      mounted ? context.router.maybePop() : null;
    } catch (e) {
      // Non‑200/201 or network/validation error
      AppToast.errorToast(e.toString());
    } finally {
      if (mounted) {
        setState(() => _isSubmitting = false);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);
    return SingleChildScrollView(
      padding: .symmetric(horizontal: 3.sw),
      child: Column(
        children: [
          Image.asset(AssetsHelper.paymentMethodBanner),
          gapH20,
          CreditCardForm(
            theme: CreditCardLightTheme(),
            controller: _cardController,
            onChanged: (_) {},
          ),
          gapH32,
          AsyncValueWidget(
            value: ref.watch(paymentMethodUiServiceProvider),
            builder: (_) {
              return CustomButton(
                title: l10n.continueTxt,
                width: .infinity,
                backgroundColor: theme.primary,
                onPressed: _isSubmitting ? null : _onConfirm,
              );
            },
          ),
        ],
      ),
    );
  }
}
