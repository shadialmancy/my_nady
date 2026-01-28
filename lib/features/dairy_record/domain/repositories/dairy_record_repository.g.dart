// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dairy_record_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(DairyRecordRepository)
final dairyRecordRepositoryProvider = DairyRecordRepositoryProvider._();

final class DairyRecordRepositoryProvider
    extends $AsyncNotifierProvider<DairyRecordRepository, void> {
  DairyRecordRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'dairyRecordRepositoryProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$dairyRecordRepositoryHash();

  @$internal
  @override
  DairyRecordRepository create() => DairyRecordRepository();
}

String _$dairyRecordRepositoryHash() =>
    r'bf2a8a2d5e62ad88468d8a544e1516d10f6f7b93';

abstract class _$DairyRecordRepository extends $AsyncNotifier<void> {
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
