import 'package:flutter/material.dart';

import '../../../../core/constants/app_sizes.dart';

class TransactionDatePicker extends StatelessWidget {
  const TransactionDatePicker({super.key, required this.onTap, this.date});

  final void Function()? onTap;
  final DateTime? date;

  @override
  Widget build(BuildContext context) {
    final (theme, _) = appSettingsRecord(context);
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey.shade300),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          children: [
            const Icon(
              Icons.calendar_today_rounded,
              size: 20,
              color: Colors.blueAccent,
            ),
            const SizedBox(width: 8),
            Text(
              date != null
                  ? "${date?.day} ${getMonthName(date?.month ?? 0)} ${date?.year}"
                  : "Select date",
              style: theme.bodyMedium.copyWith(color: Colors.black87),
            ),
          ],
        ),
      ),
    );
  }

  String getMonthName(int month) {
    const months = [
      "Jan",
      "Feb",
      "Mar",
      "Apr",
      "May",
      "Jun",
      "Jul",
      "Aug",
      "Sep",
      "Oct",
      "Nov",
      "Dec",
    ];
    return months[month - 1];
  }
}
