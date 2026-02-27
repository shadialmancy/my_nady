// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_method_ui_service.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(PaymentMethodUiService)
final paymentMethodUiServiceProvider = PaymentMethodUiServiceProvider._();

final class PaymentMethodUiServiceProvider
    extends
        $AsyncNotifierProvider<PaymentMethodUiService, PaymentMethodEntity?> {
  PaymentMethodUiServiceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'paymentMethodUiServiceProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$paymentMethodUiServiceHash();

  @$internal
  @override
  PaymentMethodUiService create() => PaymentMethodUiService();
}

String _$paymentMethodUiServiceHash() =>
    r'0c7bcc9d07848567566c74b28f401d47d5c93cde';

abstract class _$PaymentMethodUiService
    extends $AsyncNotifier<PaymentMethodEntity?> {
  FutureOr<PaymentMethodEntity?> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref =
        this.ref
            as $Ref<AsyncValue<PaymentMethodEntity?>, PaymentMethodEntity?>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<PaymentMethodEntity?>,
                PaymentMethodEntity?
              >,
              AsyncValue<PaymentMethodEntity?>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
