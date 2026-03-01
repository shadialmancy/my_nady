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
    r'aab108efd9161740ac3019b7b8790ded7daba12d';

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
