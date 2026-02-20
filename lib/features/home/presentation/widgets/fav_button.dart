import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/constants/app_sizes.dart';
import '../../../../core/helpers/assets_helper.dart';
import '../../../../core/shared/widgets/app_toast.dart';
import '../../../club/domain/repositories/club_repository.dart';
import '../../../favorite_club/presentation/provider/favorite_clubs_ui_service.dart';
import '../provider/home_ui_service.dart';

class FavoriteButton extends ConsumerStatefulWidget {
  const FavoriteButton({
    super.key,
    this.clubId,
    this.initialIsFavorite = false,
    this.onRemoved,
  });

  /// Branch/club ID for API toggle. When null, only local UI toggle (no API call).
  final String? clubId;

  /// Initial favorite state (e.g. true when showing on favorites screen).
  final bool initialIsFavorite;

  /// Called when unfavoriting - use to optimistically remove from list (e.g. on favorites screen).
  final VoidCallback? onRemoved;

  @override
  ConsumerState<FavoriteButton> createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends ConsumerState<FavoriteButton> {
  late bool _isFav;

  @override
  void initState() {
    super.initState();
    _isFav = widget.initialIsFavorite;
  }

  @override
  void didUpdateWidget(FavoriteButton oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.initialIsFavorite != widget.initialIsFavorite) {
      _isFav = widget.initialIsFavorite;
    }
  }

  void _handleToggleSideEffects({
    required bool wasFav,
    required bool newStatus,
  }) {
    if (!newStatus && widget.onRemoved != null) {
      widget.onRemoved!();
    }

    if (widget.clubId != null) {
      ref
          .read(clubRepositoryProvider.notifier)
          .toggleFavorite(widget.clubId!)
          .then((_) {
            ref
                .read(homeUiServiceProvider.notifier)
                .updateClubFavoriteStatus(widget.clubId!, newStatus);
            // Invalidate favorites list to ensure it stays in sync
            ref.invalidate(favoriteClubsUiServiceProvider);
          })
          .catchError((e) {
            if (mounted) {
              setState(() => _isFav = wasFav);
              AppToast.errorToast(e.toString());
            }
          });
    }
  }

  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);

    // Prioritize local optimistic state for immediate UI response
    final displayStatus = _isFav;

    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTapDown: (_) {
        // Flip state immediately on finger down for zero perceived delay
        final wasFav = _isFav;
        final newStatus = !wasFav;
        setState(() => _isFav = newStatus);
        _handleToggleSideEffects(wasFav: wasFav, newStatus: newStatus);
      },
      child: CircleAvatar(
        radius: 15,
        backgroundColor: displayStatus ? theme.secondary : theme.white,
        child: SvgPicture.asset(
          AssetsHelper.heart1Icon,
          colorFilter: displayStatus
              ? ColorFilter.mode(theme.white, BlendMode.srcIn)
              : null,
        ),
      ),
    );
  }
}
