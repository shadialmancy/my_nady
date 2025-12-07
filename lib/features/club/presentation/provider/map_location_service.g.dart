// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'map_location_service.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(MapLocationService)
const mapLocationServiceProvider = MapLocationServiceProvider._();

final class MapLocationServiceProvider
    extends $AsyncNotifierProvider<MapLocationService, void> {
  const MapLocationServiceProvider._()
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
    r'78630826a219898a09f4037234d3134669eadc5a';

abstract class _$MapLocationService extends $AsyncNotifier<void> {
  FutureOr<void> build();
  @$mustCallSuper
  @override
  void runBuild() {
    build();
    final ref = this.ref as $Ref<AsyncValue<void>, void>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<void>, void>,
              AsyncValue<void>,
              Object?,
              Object?
            >;
    element.handleValue(ref, null);
  }
}
