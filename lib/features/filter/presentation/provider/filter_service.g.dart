// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'filter_service.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(FilterService)
final filterServiceProvider = FilterServiceProvider._();

final class FilterServiceProvider
    extends $AsyncNotifierProvider<FilterService, List<Map<String, dynamic>>?> {
  FilterServiceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'filterServiceProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$filterServiceHash();

  @$internal
  @override
  FilterService create() => FilterService();
}

String _$filterServiceHash() => r'e8322d4de8bf7bd2f1fc865137af23288bf6c714';

abstract class _$FilterService
    extends $AsyncNotifier<List<Map<String, dynamic>>?> {
  FutureOr<List<Map<String, dynamic>>?> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref =
        this.ref
            as $Ref<
              AsyncValue<List<Map<String, dynamic>>?>,
              List<Map<String, dynamic>>?
            >;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<List<Map<String, dynamic>>?>,
                List<Map<String, dynamic>>?
              >,
              AsyncValue<List<Map<String, dynamic>>?>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
