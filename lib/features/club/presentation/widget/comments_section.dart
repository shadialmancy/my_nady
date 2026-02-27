import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../core/constants/app_sizes.dart';
import '../../../../core/shared/widgets/widgets.dart';
import '../provider/get_reviews_service.dart';
import 'widgets.dart';

class CommentsSection extends ConsumerStatefulWidget {
  const CommentsSection({super.key, required this.branchId});

  final String branchId;

  @override
  ConsumerState<CommentsSection> createState() => _CommentsSectionState();
}

class _CommentsSectionState extends ConsumerState<CommentsSection> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref
          .read(getReviewsServiceProvider.notifier)
          .fetchReviews(widget.branchId);
    });
  }

  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);
    final reviewsState = ref.watch(getReviewsServiceProvider);

    return AsyncValueWidget(
      value: reviewsState,
      builder: (reviewEntity) {
        final reviews = reviewEntity?.data;

        if (reviews == null || reviews.isEmpty) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 32),
            child: Center(
              child: Column(
                children: [
                  Icon(
                    Icons.speaker_notes_off_rounded,
                    size: 48,
                    color: theme.greyD9D9,
                  ),
                  gapH12,
                  Text(
                    l10n.noCommentsYet,
                    style: theme.bodyMedium.copyWith(color: theme.grey86),
                  ),
                ],
              ),
            ),
          );
        }

        return Column(
          children: reviews
              .map((review) => CommentCard(review: review))
              .toList(),
        );
      },
    );
  }
}
