// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edit_profile_service.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(EditProfileService)
const editProfileServiceProvider = EditProfileServiceFamily._();

final class EditProfileServiceProvider
    extends $AsyncNotifierProvider<EditProfileService, String?> {
  const EditProfileServiceProvider._({
    required EditProfileServiceFamily super.from,
    required ImageType super.argument,
  }) : super(
         retry: null,
         name: r'editProfileServiceProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$editProfileServiceHash();

  @override
  String toString() {
    return r'editProfileServiceProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  EditProfileService create() => EditProfileService();

  @override
  bool operator ==(Object other) {
    return other is EditProfileServiceProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$editProfileServiceHash() =>
    r'4a160855289116205e8db25ee006e4a52f88854f';

final class EditProfileServiceFamily extends $Family
    with
        $ClassFamilyOverride<
          EditProfileService,
          AsyncValue<String?>,
          String?,
          FutureOr<String?>,
          ImageType
        > {
  const EditProfileServiceFamily._()
    : super(
        retry: null,
        name: r'editProfileServiceProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  EditProfileServiceProvider call(ImageType type) =>
      EditProfileServiceProvider._(argument: type, from: this);

  @override
  String toString() => r'editProfileServiceProvider';
}

abstract class _$EditProfileService extends $AsyncNotifier<String?> {
  late final _$args = ref.$arg as ImageType;
  ImageType get type => _$args;

  FutureOr<String?> build(ImageType type);
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build(_$args);
    final ref = this.ref as $Ref<AsyncValue<String?>, String?>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<String?>, String?>,
              AsyncValue<String?>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
