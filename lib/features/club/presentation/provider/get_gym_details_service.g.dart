// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_gym_details_service.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(GetGymDetailsService)
final getGymDetailsServiceProvider = GetGymDetailsServiceProvider._();

final class GetGymDetailsServiceProvider
    extends $AsyncNotifierProvider<GetGymDetailsService, GymDetailEntity?> {
  GetGymDetailsServiceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'getGymDetailsServiceProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$getGymDetailsServiceHash();

  @$internal
  @override
  GetGymDetailsService create() => GetGymDetailsService();
}

String _$getGymDetailsServiceHash() =>
    r'fffe34a6a699e7f5d9e6a9246aaab80cf74353da';

abstract class _$GetGymDetailsService extends $AsyncNotifier<GymDetailEntity?> {
  FutureOr<GymDetailEntity?> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref =
        this.ref as $Ref<AsyncValue<GymDetailEntity?>, GymDetailEntity?>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<GymDetailEntity?>, GymDetailEntity?>,
              AsyncValue<GymDetailEntity?>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
