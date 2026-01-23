// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_ui_service.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(ProfileUiService)
final profileUiServiceProvider = ProfileUiServiceProvider._();

final class ProfileUiServiceProvider
    extends $AsyncNotifierProvider<ProfileUiService, void> {
  ProfileUiServiceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'profileUiServiceProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$profileUiServiceHash();

  @$internal
  @override
  ProfileUiService create() => ProfileUiService();
}

String _$profileUiServiceHash() => r'b6517682eb64b7de0aaae12fe7b598f3df1db280';

abstract class _$ProfileUiService extends $AsyncNotifier<void> {
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
