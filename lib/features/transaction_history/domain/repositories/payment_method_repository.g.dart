// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_method_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(PaymentMethodRepository)
final paymentMethodRepositoryProvider = PaymentMethodRepositoryProvider._();

final class PaymentMethodRepositoryProvider
    extends $AsyncNotifierProvider<PaymentMethodRepository, void> {
  PaymentMethodRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'paymentMethodRepositoryProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$paymentMethodRepositoryHash();

  @$internal
  @override
  PaymentMethodRepository create() => PaymentMethodRepository();
}

String _$paymentMethodRepositoryHash() =>
    r'3efee615a1643086c725ff65c22f65f2c68ae1e5';

abstract class _$PaymentMethodRepository extends $AsyncNotifier<void> {
  FutureOr<void> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<AsyncValue<void>, void>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<void>, void>,
              AsyncValue<void>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
