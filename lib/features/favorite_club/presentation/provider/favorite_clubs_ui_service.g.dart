// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favorite_clubs_ui_service.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(FavoriteClubsUiService)
final favoriteClubsUiServiceProvider = FavoriteClubsUiServiceProvider._();

final class FavoriteClubsUiServiceProvider
    extends $AsyncNotifierProvider<FavoriteClubsUiService, ClubEntity?> {
  FavoriteClubsUiServiceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'favoriteClubsUiServiceProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$favoriteClubsUiServiceHash();

  @$internal
  @override
  FavoriteClubsUiService create() => FavoriteClubsUiService();
}

String _$favoriteClubsUiServiceHash() =>
    r'bf49839e60123f773a2c0091c8660f9624fd9ad8';

abstract class _$FavoriteClubsUiService extends $AsyncNotifier<ClubEntity?> {
  FutureOr<ClubEntity?> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<AsyncValue<ClubEntity?>, ClubEntity?>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<ClubEntity?>, ClubEntity?>,
              AsyncValue<ClubEntity?>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
