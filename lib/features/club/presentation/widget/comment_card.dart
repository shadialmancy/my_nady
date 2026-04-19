import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';
import '../../data/models/club_dto/reply.dart';
import '../../data/models/club_dto/review.dart';

import '../../../../core/constants/app_sizes.dart';
import '../../../../core/helpers/assets_helper.dart';

class CommentCard extends StatefulWidget {
  const CommentCard({super.key, required this.review});

  final Review review;

  @override
  State<CommentCard> createState() => _CommentCardState();
}

class _CommentCardState extends State<CommentCard> {
  bool isFavorite = false;
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);
    final review = widget.review;

    if (review.comment == null || review.comment!.isEmpty) {
      return const SizedBox.shrink();
    }

    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: theme.greyD9D9, width: 3),
              color: theme.white,
            ),
            child: review.user?.image != null
                ? CircleAvatar(
                    radius: 12,
                    backgroundImage: NetworkImage(review.user!.image!),
                  )
                : SvgPicture.asset(AssetsHelper.personIcon),
          ),
          gapW12,
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        review.user?.name ?? "Anonymous",
                        style: theme.titleSmall.copyWith(
                          color: theme.primary,
                          fontWeight: FontWeight.w700,
                          fontSize: 12,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    gapW12,
                    Text(
                      review.createdAt != null
                          ? _formatDate(review.createdAt!)
                          : "",
                      style: theme.titleSmall.copyWith(
                        color: theme.grey86,
                        fontWeight: FontWeight.normal,
                        fontSize: 8,
                      ),
                    ),
                  ],
                ),
                gapH4,
                Row(
                  children: List.generate(
                    5,
                    (index) => Icon(
                      Icons.star_rate_rounded,
                      size: 12,
                      color: index < (review.rating ?? 0)
                          ? theme.yellow37
                          : theme.greyD9D9,
                    ),
                  ),
                ),
                gapH4,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      review.comment!,
                      maxLines: isExpanded ? null : 3,
                      overflow: isExpanded ? null : TextOverflow.ellipsis,
                      style: theme.titleSmall.copyWith(
                        fontWeight: FontWeight.normal,
                        fontSize: 12,
                      ),
                    ),
                    if (review.comment!.length > 100)
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            isExpanded = !isExpanded;
                          });
                        },
                        child: Text(
                          isExpanded ? l10n.showLess : l10n.showMore,
                          style: theme.titleSmall.copyWith(
                            color: theme.primary,
                            fontWeight: FontWeight.w700,
                            fontSize: 10,
                          ),
                        ),
                      ),
                  ],
                ),
                gapH4,
                if (review.replies != null && review.replies!.isNotEmpty)
                  ...review.replies!.map((reply) => _buildReply(reply, theme)),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildReply(Reply reply, dynamic theme) {
    return Padding(
      padding: const EdgeInsets.only(top: 8, left: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                reply.user?.name ??
                    (reply.isStaffReply == true ? "Staff" : "User"),
                style: theme.titleSmall.copyWith(
                  color: theme.primary,
                  fontWeight: FontWeight.w700,
                  fontSize: 10,
                ),
              ),
              gapW8,
              if (reply.isStaffReply == true)
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 4,
                    vertical: 1,
                  ),
                  decoration: BoxDecoration(
                    color: theme.primary.withValues(alpha: 0.1),
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Text(
                    "STAFF",
                    style: theme.titleSmall.copyWith(
                      color: theme.primary,
                      fontSize: 6,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
            ],
          ),
          Text(
            reply.comment ?? "",
            style: theme.titleSmall.copyWith(
              fontWeight: FontWeight.normal,
              fontSize: 10,
            ),
          ),
        ],
      ),
    );
  }

  String _formatDate(DateTime date) {
    try {
      return DateFormat('hh:mm a').format(date);
    } catch (e) {
      return date.toString();
    }
  }
}
