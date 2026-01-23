// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_ui_service.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(HomeUiService)
final homeUiServiceProvider = HomeUiServiceProvider._();

final class HomeUiServiceProvider
    extends $AsyncNotifierProvider<HomeUiService, ClubEntity?> {
  HomeUiServiceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'homeUiServiceProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$homeUiServiceHash();

  @$internal
  @override
  HomeUiService create() => HomeUiService();
}

String _$homeUiServiceHash() => r'b62d032ce1c3af1b503429d643844857e37e77a0';

abstract class _$HomeUiService extends $AsyncNotifier<ClubEntity?> {
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
