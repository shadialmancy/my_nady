// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address_book_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(AddressBookRepository)
final addressBookRepositoryProvider = AddressBookRepositoryProvider._();

final class AddressBookRepositoryProvider
    extends $AsyncNotifierProvider<AddressBookRepository, void> {
  AddressBookRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'addressBookRepositoryProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$addressBookRepositoryHash();

  @$internal
  @override
  AddressBookRepository create() => AddressBookRepository();
}

String _$addressBookRepositoryHash() =>
    r'c07bf76169da3c3e001707ab82e96674b42b1312';

abstract class _$AddressBookRepository extends $AsyncNotifier<void> {
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
