// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dairy_record_ui_service.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(DairyRecordUiService)
final dairyRecordUiServiceProvider = DairyRecordUiServiceProvider._();

final class DairyRecordUiServiceProvider
    extends $AsyncNotifierProvider<DairyRecordUiService, DairyEntity?> {
  DairyRecordUiServiceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'dairyRecordUiServiceProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$dairyRecordUiServiceHash();

  @$internal
  @override
  DairyRecordUiService create() => DairyRecordUiService();
}

String _$dairyRecordUiServiceHash() =>
    r'abc543e97895a81b8057865ac348b4e4565b7386';

abstract class _$DairyRecordUiService extends $AsyncNotifier<DairyEntity?> {
  FutureOr<DairyEntity?> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<AsyncValue<DairyEntity?>, DairyEntity?>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<DairyEntity?>, DairyEntity?>,
              AsyncValue<DairyEntity?>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
