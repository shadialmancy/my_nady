import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_nady_project/core/constants/app_sizes.dart';

class TransactionDetailsCard extends StatelessWidget {
  const TransactionDetailsCard({super.key, required this.data});
  final Map<String, dynamic> data;
  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);
    return Padding(
      padding: const .symmetric(vertical: 8),
      child: Row(
        crossAxisAlignment: .start,
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
                Row(
                  mainAxisAlignment: .spaceBetween,
                  children: [
                    Text(
                      data["type"],
                      style: theme.labelLarge.copyWith(color: theme.fullBlack),
                    ),

                    Container(
                      padding: const .symmetric(horizontal: 5, vertical: 1),
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
                Row(
                  mainAxisAlignment: .spaceBetween,
                  children: [
                    Text(
                      l10n.transactionId,
                      style: theme.labelSmall.copyWith(color: theme.grey90),
                    ),
                    gapW16,
                    Text(
                      data["date"],
                      style: theme.labelSmall.copyWith(color: theme.grey90),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: .spaceBetween,
                  children: [
                    Text(
                      "564925374920",
                      style: theme.labelSmall.copyWith(color: theme.fullBlack),
                    ),
                    gapW16,
                    Text(
                      data["time"],
                      style: theme.labelSmall.copyWith(color: theme.grey90),
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
