// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_reviews_service.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(GetReviewsService)
final getReviewsServiceProvider = GetReviewsServiceProvider._();

final class GetReviewsServiceProvider
    extends $AsyncNotifierProvider<GetReviewsService, ReviewEntity?> {
  GetReviewsServiceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'getReviewsServiceProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$getReviewsServiceHash();

  @$internal
  @override
  GetReviewsService create() => GetReviewsService();
}

String _$getReviewsServiceHash() => r'37588d39919a479e0cd19b569742650e5ca8a424';

abstract class _$GetReviewsService extends $AsyncNotifier<ReviewEntity?> {
  FutureOr<ReviewEntity?> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<AsyncValue<ReviewEntity?>, ReviewEntity?>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<ReviewEntity?>, ReviewEntity?>,
              AsyncValue<ReviewEntity?>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
