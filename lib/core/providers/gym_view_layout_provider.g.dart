// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gym_view_layout_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(GymViewLayout)
final gymViewLayoutProvider = GymViewLayoutProvider._();

final class GymViewLayoutProvider
    extends $NotifierProvider<GymViewLayout, GymLayoutMode> {
  GymViewLayoutProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'gymViewLayoutProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$gymViewLayoutHash();

  @$internal
  @override
  GymViewLayout create() => GymViewLayout();
}

String _$gymViewLayoutHash() => r'a1b2c3d4e5f6789012345678901234567890abcd';

abstract class _$GymViewLayout extends $Notifier<GymLayoutMode> {
  GymLayoutMode build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<GymLayoutMode, GymLayoutMode>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<GymLayoutMode, GymLayoutMode>,
              GymLayoutMode,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
