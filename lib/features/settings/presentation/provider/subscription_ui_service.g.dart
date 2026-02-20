// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subscription_ui_service.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(SubscriptionUiService)
final subscriptionUiServiceProvider = SubscriptionUiServiceProvider._();

final class SubscriptionUiServiceProvider
    extends $AsyncNotifierProvider<SubscriptionUiService, void> {
  SubscriptionUiServiceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'subscriptionUiServiceProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$subscriptionUiServiceHash();

  @$internal
  @override
  SubscriptionUiService create() => SubscriptionUiService();
}

String _$subscriptionUiServiceHash() =>
    r'09d64b4940586e2203642ec9eb7020f000df007f';

abstract class _$SubscriptionUiService extends $AsyncNotifier<void> {
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
