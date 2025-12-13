import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_nady_project/core/constants/app_sizes.dart';

class TansactionCard extends StatelessWidget {
  const TansactionCard({super.key, required this.data});
  final Map<String, dynamic> data;
  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);
    return Padding(
      padding: const .symmetric(vertical: 8),
      child: Row(
        children: [
          Container(
            height: 52,
            width: 52,
            alignment: .center,
            padding: const .all(10),
            decoration: BoxDecoration(
              color: theme.primary,
              borderRadius: .circular(16),
            ),
            child: SvgPicture.asset(data["icon"]),
          ),
          gapW8,
          Expanded(
            child: Column(
              crossAxisAlignment: .start,
              children: [
                Row(
                  mainAxisAlignment: .spaceBetween,
                  children: [
                    Text(
                      data["type"],
                      style: theme.labelLarge.copyWith(color: theme.fullBlack),
                    ),
                    Text(
                      data["amount"],
                      style: theme.labelLarge.copyWith(color: theme.fullBlack),
                    ),
                  ],
                ),
                // gapH4,
                Row(
                  mainAxisAlignment: .spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          data["date"],
                          style: theme.labelLarge.copyWith(
                            color: theme.fullBlack,
                            fontSize: 12,
                          ),
                        ),
                        Container(
                          padding: const .symmetric(horizontal: 5),
                          decoration: BoxDecoration(
                            color: data["status"] == "pending"
                                ? theme.yellowFFB.withValues(alpha: .2)
                                : data["status"] == "confirmed"
                                ? theme.green00f.withValues(alpha: .2)
                                : theme.redF5.withValues(alpha: .2),
                            borderRadius: .circular(8),
                          ),
                          child: Text(
                            data["status"],
                            style: theme.labelLarge.copyWith(
                              color: data["status"] == "pending"
                                  ? theme.yellowF4
                                  : data["status"] == "confirmed"
                                  ? theme.green5D
                                  : theme.redF5,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: .spaceBetween,
                  children: [
                    Text(
                      data["type"],
                      style: theme.labelLarge.copyWith(color: theme.fullBlack),
                    ),
                    Text(
                      data["amount"],
                      style: theme.labelLarge.copyWith(color: theme.fullBlack),
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
