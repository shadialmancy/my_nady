// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_search_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(HomeSearchQuery)
final homeSearchQueryProvider = HomeSearchQueryProvider._();

final class HomeSearchQueryProvider
    extends $NotifierProvider<HomeSearchQuery, String> {
  HomeSearchQueryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'homeSearchQueryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$homeSearchQueryHash();

  @$internal
  @override
  HomeSearchQuery create() => HomeSearchQuery();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(String value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<String>(value),
    );
  }
}

String _$homeSearchQueryHash() => r'2fa7aad25ccc56fe0fe6ab54f7b3c9f7de2f71a9';

abstract class _$HomeSearchQuery extends $Notifier<String> {
  String build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<String, String>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<String, String>,
              String,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
