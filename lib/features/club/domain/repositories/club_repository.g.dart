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

String _$clubRepositoryHash() => r'5180261e21209309c3793c765484f967adf399ca';

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
