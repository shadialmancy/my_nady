import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/constants/app_sizes.dart';
import '../../../../core/helpers/assets_helper.dart';

class CommentCard extends StatefulWidget {
  const CommentCard({super.key});

  @override
  State<CommentCard> createState() => _CommentCardState();
}

class _CommentCardState extends State<CommentCard> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);

    return Padding(
      padding: const .only(top: 16),
      child: Row(
        crossAxisAlignment: .start,
        children: [
          Container(
            padding: const .all(8),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: theme.greyD9D9, width: 3),
              color: theme.white,
            ),
            child: SvgPicture.asset(AssetsHelper.personIcon),
          ),
          gapW12,
          Expanded(
            child: Column(
              crossAxisAlignment: .start,
              mainAxisAlignment: .start,
              children: [
                Row(
                  children: [
                    Text(
                      "Omar Ehab",
                      style: theme.titleSmall.copyWith(
                        color: theme.primary,
                        fontWeight: .w700,
                        fontSize: 12,
                      ),
                    ),
                    gapW12,
                    Text(
                      "2:05 AM",
                      style: theme.titleSmall.copyWith(
                        color: theme.grey86,
                        fontWeight: .normal,
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
                      color: theme.yellow37,
                    ),
                  ),
                ),
                gapH4,
                Text(
                  "At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis prae voluptatum deleniti atque corrupti quos dolores et quas molesti",

                  style: theme.titleSmall.copyWith(
                    fontWeight: .normal,
                    fontSize: 12,
                  ),
                ),
                gapH4,
                Row(
                  crossAxisAlignment: .center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        isFavorite = !isFavorite;
                        setState(() {});
                      },
                      child: Icon(
                        isFavorite ? Icons.favorite : Icons.favorite_border,
                        color: isFavorite ? theme.redApple : theme.primaryText,
                        size: 12,
                      ),
                    ),
                    gapW4,
                    Text(
                      "365",
                      style: theme.titleSmall.copyWith(
                        color: theme.primaryText,
                        fontWeight: .normal,
                        fontSize: 10,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
