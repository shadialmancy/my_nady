import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../../core/constants/app_sizes.dart';
import '../../../../core/providers/gym_view_layout_provider.dart';
import '../../../../core/router/app_router.dart';
import '../../../../features/club/data/models/club_dto/datum.dart';
import 'widgets.dart';

class ClubCollectionView extends ConsumerWidget {
  const ClubCollectionView({
    super.key,
    required this.clubs,
    this.shrinkWrap = false,
    this.physics,
    this.padding,
    this.isFavorite = false,
    this.onRemovedFromFavorites,
    this.animateItems = false,
  });

  final List<Datum> clubs;
  final bool shrinkWrap;
  final ScrollPhysics? physics;
  final EdgeInsetsGeometry? padding;
  final bool isFavorite;
  final void Function(String clubId)? onRemovedFromFavorites;
  final bool animateItems;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final layout = ref.watch(gymViewLayoutProvider);

    if (layout == GymLayoutMode.list) {
      return ListView.separated(
        shrinkWrap: shrinkWrap,
        physics: physics,
        padding: padding,
        itemCount: clubs.length,
        separatorBuilder: (_, _) => gapH4,
        itemBuilder: (context, index) => _buildListItem(context, index),
      );
    }

    return GridView.builder(
      shrinkWrap: shrinkWrap,
      physics: physics,
      padding: padding,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.75,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      itemCount: clubs.length,
      itemBuilder: (context, index) => _buildGridItem(context, index),
    );
  }

  Widget _buildListItem(BuildContext context, int index) {
    final club = clubs[index];
    return ClubListCard(
      club: club,
      isFavorite: isFavorite || (club.isFavorite ?? false),
      onRemovedFromFavorites: onRemovedFromFavorites != null && club.id != null
          ? () => onRemovedFromFavorites!(club.id!)
          : null,
    );
  }

  Widget _buildGridItem(BuildContext context, int index) {
    final club = clubs[index];
    return GestureDetector(
      onTap: () {
        context.router.push(
          ClubRoute(
            id: club.id ?? '',
            distance: club.distance?.toString() ?? '',
          ),
        );
      },
      child: ClubCard(
        club: club,
        marginBottom: 10,
        marginTop: 0,
        marginLeft: 6,
        marginRight: 6,
        isFavorite: isFavorite || (club.isFavorite ?? false),
        onRemovedFromFavorites: onRemovedFromFavorites != null && club.id != null
            ? () => onRemovedFromFavorites!(club.id!)
            : null,
      ),
    );
  }
}

class ClubSection extends ConsumerWidget {
  const ClubSection({
    super.key,
    required this.title,
    required this.clubs,
    this.onSeeAll,
  });

  final String title;
  final List<Datum> clubs;
  final VoidCallback? onSeeAll;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    if (clubs.isEmpty) return const SizedBox.shrink();

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 3.5.sw),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TitleWithSeeall(title: title, onPress: onSeeAll),
          gapH12,
          ClubCollectionView(
            clubs: clubs,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
          ),
          gapH16,
        ],
      ),
    );
  }
}
