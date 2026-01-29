// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'map_ui_service.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(MapUiService)
final mapUiServiceProvider = MapUiServiceProvider._();

final class MapUiServiceProvider
    extends $AsyncNotifierProvider<MapUiService, ClubEntity?> {
  MapUiServiceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'mapUiServiceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$mapUiServiceHash();

  @$internal
  @override
  MapUiService create() => MapUiService();
}

String _$mapUiServiceHash() => r'0d84ccbda3fffa1acb5c261ee33390f046edc6c3';

abstract class _$MapUiService extends $AsyncNotifier<ClubEntity?> {
  FutureOr<ClubEntity?> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<AsyncValue<ClubEntity?>, ClubEntity?>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<ClubEntity?>, ClubEntity?>,
              AsyncValue<ClubEntity?>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
