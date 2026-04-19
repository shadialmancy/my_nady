// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address_book_ui_service.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(AddressBookUiService)
final addressBookUiServiceProvider = AddressBookUiServiceProvider._();

final class AddressBookUiServiceProvider
    extends $AsyncNotifierProvider<AddressBookUiService, AddressBookEntity?> {
  AddressBookUiServiceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'addressBookUiServiceProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$addressBookUiServiceHash();

  @$internal
  @override
  AddressBookUiService create() => AddressBookUiService();
}

String _$addressBookUiServiceHash() =>
    r'6c20ac65a6f00277bb4aa616b2feb6a8acba3a88';

abstract class _$AddressBookUiService
    extends $AsyncNotifier<AddressBookEntity?> {
  FutureOr<AddressBookEntity?> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref =
        this.ref as $Ref<AsyncValue<AddressBookEntity?>, AddressBookEntity?>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<AddressBookEntity?>, AddressBookEntity?>,
              AsyncValue<AddressBookEntity?>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}

@ProviderFor(defaultAddress)
final defaultAddressProvider = DefaultAddressProvider._();

final class DefaultAddressProvider
    extends $FunctionalProvider<AddressData?, AddressData?, AddressData?>
    with $Provider<AddressData?> {
  DefaultAddressProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'defaultAddressProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$defaultAddressHash();

  @$internal
  @override
  $ProviderElement<AddressData?> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  AddressData? create(Ref ref) {
    return defaultAddress(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AddressData? value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AddressData?>(value),
    );
  }
}

String _$defaultAddressHash() => r'e3b4385220f9cc3ce8092643a69d4069b66fbab1';
