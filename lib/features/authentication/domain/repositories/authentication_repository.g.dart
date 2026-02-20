// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'authentication_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(AuthenticationRepository)
final authenticationRepositoryProvider = AuthenticationRepositoryProvider._();

final class AuthenticationRepositoryProvider
    extends $AsyncNotifierProvider<AuthenticationRepository, void> {
  AuthenticationRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'authenticationRepositoryProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$authenticationRepositoryHash();

  @$internal
  @override
  AuthenticationRepository create() => AuthenticationRepository();
}

String _$authenticationRepositoryHash() =>
    r'690f2b782577dffd11bf22140d975a6e8abcfe4c';

abstract class _$AuthenticationRepository extends $AsyncNotifier<void> {
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
