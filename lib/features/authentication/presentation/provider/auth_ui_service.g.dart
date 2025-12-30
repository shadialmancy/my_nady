// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_ui_service.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(AuthUiService)
final authUiServiceProvider = AuthUiServiceProvider._();

final class AuthUiServiceProvider
    extends $AsyncNotifierProvider<AuthUiService, User?> {
  AuthUiServiceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'authUiServiceProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$authUiServiceHash();

  @$internal
  @override
  AuthUiService create() => AuthUiService();
}

String _$authUiServiceHash() => r'dceb301a057f6b8fa20129771eed3d5afd0f6828';

abstract class _$AuthUiService extends $AsyncNotifier<User?> {
  FutureOr<User?> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<AsyncValue<User?>, User?>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<User?>, User?>,
              AsyncValue<User?>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
