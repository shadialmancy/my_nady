// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'club_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(ClubRepository)
final clubRepositoryProvider = ClubRepositoryProvider._();

final class ClubRepositoryProvider
    extends $AsyncNotifierProvider<ClubRepository, void> {
  ClubRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'clubRepositoryProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$clubRepositoryHash();

  @$internal
  @override
  ClubRepository create() => ClubRepository();
}

String _$clubRepositoryHash() => r'0f8109d1ac5f85a9a18f3fc6a568d125b8dc96c6';

abstract class _$ClubRepository extends $AsyncNotifier<void> {
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
