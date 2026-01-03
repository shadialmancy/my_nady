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

String _$authUiServiceHash() => r'6d7a091fb331be9afbf131938e63248ff85fe88e';

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
