import 'package:flutter/material.dart';
import 'package:my_nady_project/core/constants/app_sizes.dart';

import '../widgets/widgets.dart';

class TransactionFilterUi extends StatefulWidget {
  const TransactionFilterUi({super.key});

  @override
  State<TransactionFilterUi> createState() => _TransactionFilterUiState();
}

class _TransactionFilterUiState extends State<TransactionFilterUi> {
  Future<void> selectDate(BuildContext context, bool isStartDate) async {
    final DateTime? picked = await showDatePicker(
      builder: (context, child) {
        return Theme(
          data: Theme.of(context).copyWith(
            colorScheme: const ColorScheme.light(
              primary: Colors.blueAccent,
              onPrimary: Colors.white,
              onSurface: Colors.black,
              surface: Colors.white,
            ),
            dialogTheme: const DialogThemeData(
              backgroundColor: Colors.white,
              surfaceTintColor: Colors.transparent,
            ),
          ),
          child: child!,
        );
      },
      context: context,
      initialDate: isStartDate
          ? (startDate ?? DateTime.now())
          : (endDate ?? DateTime.now()),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );
    if (picked != null) {
      if (isStartDate && endDate != null && picked.isAfter(endDate!)) {
        if (!context.mounted) return;
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text("Start date cannot be after end date")),
        );
        return;
      }
      if (!isStartDate && startDate != null && picked.isBefore(startDate!)) {
        if (!context.mounted) return;
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text("End date cannot be before start date")),
        );
        return;
      }

      setState(() {
        if (isStartDate) {
          startDate = picked;
        } else {
          endDate = picked;
        }
      });
    }
  }

  final List<String> periods = [
    "Today",
    "This week",
    "This month",
    "Previous month",
    "This year",
  ];
  String? selectedPeriod;

  // Status data
  final List<String> statuses = ["Confirmed", "Pending", "Canceled"];
  String? selectedStatus;

  // Date selections
  DateTime? startDate = DateTime(2018, 12, 11);
  DateTime? endDate = DateTime(2023, 9, 20);
  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Filters",
                style: theme.titleLarge.copyWith(
                  fontWeight: .w600,
                  color: theme.fullBlack,
                ),
              ),
              TextButton(
                onPressed: () {
                  setState(() {
                    selectedPeriod = null;
                    selectedStatus = null;
                    startDate = null;
                    endDate = null;
                  });
                },
                child: Text(
                  "Clear",
                  style: theme.bodyMedium.copyWith(color: Colors.blueAccent),
                ),
              ),
            ],
          ),
          gapH24,

          // Period Section
          Text(
            "Period",
            style: theme.titleMedium.copyWith(
              fontWeight: FontWeight.w500,
              color: Colors.black87,
            ),
          ),
          gapH12,
          Wrap(
            spacing: 10,
            runSpacing: 10,
            children: periods.map((period) {
              final isSelected = selectedPeriod == period;
              return GestureDetector(
                onTap: () {
                  setState(() {
                    selectedPeriod = period;
                  });
                },
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 8,
                  ),
                  decoration: BoxDecoration(
                    color: isSelected ? Colors.blue[50] : Colors.white,
                    border: Border.all(
                      color: isSelected
                          ? Colors.blueAccent
                          : Colors.grey.shade300,
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Text(
                    period,
                    style: theme.bodyMedium.copyWith(
                      color: isSelected ? Colors.blueAccent : Colors.black87,
                    ),
                  ),
                ),
              );
            }).toList(),
          ),
          gapH24,

          // Select Period Section
          Text(
            "Select period",
            style: theme.titleMedium.copyWith(
              fontWeight: FontWeight.w500,
              color: Colors.black87,
            ),
          ),
          gapH12,
          Row(
            children: [
              Expanded(
                child: TransactionDatePicker(
                  date: startDate,
                  onTap: () {
                    selectDate(context, true);
                  },
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Text("-"),
              ),
              Expanded(
                child: TransactionDatePicker(
                  date: endDate,
                  onTap: () {
                    selectDate(context, false);
                  },
                ),
              ),
            ],
          ),
          gapH24,

          // Status Section
          Text(
            "Status",
            style: theme.titleMedium.copyWith(
              fontWeight: FontWeight.w500,
              color: Colors.black87,
            ),
          ),
          gapH12,
          Wrap(
            spacing: 10,
            runSpacing: 10,
            children: statuses.map((status) {
              final isSelected = selectedStatus == status;
              return GestureDetector(
                onTap: () {
                  setState(() {
                    selectedStatus = status;
                  });
                },
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 8,
                  ),
                  decoration: BoxDecoration(
                    color: isSelected ? Colors.blue[50] : Colors.white,
                    border: Border.all(
                      color: isSelected
                          ? Colors.blueAccent
                          : Colors.grey.shade300,
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Text(
                    status,
                    style: theme.bodyMedium.copyWith(
                      color: isSelected ? Colors.blueAccent : Colors.black87,
                    ),
                  ),
                ),
              );
            }).toList(),
          ),
          gapH32,

          // Show Results Button
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(
                  0xFF1A2B5B,
                ), // Dark blue from image
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(vertical: 16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                elevation: 0,
              ),
              child: const Text(
                "Show results (3261)",
                style: TextStyle(fontSize: 16, fontWeight: .w600),
              ),
            ),
          ),
          gapH20,
        ],
      ),
    );
  }
}
