// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'map_location_service.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(currentLocationAddress)
final currentLocationAddressProvider = CurrentLocationAddressProvider._();

final class CurrentLocationAddressProvider
    extends $FunctionalProvider<AsyncValue<String?>, String?, FutureOr<String?>>
    with $FutureModifier<String?>, $FutureProvider<String?> {
  CurrentLocationAddressProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'currentLocationAddressProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$currentLocationAddressHash();

  @$internal
  @override
  $FutureProviderElement<String?> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<String?> create(Ref ref) {
    return currentLocationAddress(ref);
  }
}

String _$currentLocationAddressHash() =>
    r'f6c78af0a8f86b8ccc4c279a7859312485cb376b';

@ProviderFor(MapLocationService)
final mapLocationServiceProvider = MapLocationServiceProvider._();

final class MapLocationServiceProvider
    extends $AsyncNotifierProvider<MapLocationService, void> {
  MapLocationServiceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'mapLocationServiceProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$mapLocationServiceHash();

  @$internal
  @override
  MapLocationService create() => MapLocationService();
}

String _$mapLocationServiceHash() =>
    r'24d0d6228fd54a54d69f44af51109e025d815dd9';

abstract class _$MapLocationService extends $AsyncNotifier<void> {
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
