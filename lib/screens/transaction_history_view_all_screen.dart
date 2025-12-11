import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:my_nady_project/core/constants/app_sizes.dart';

import '../core/constants/adaptive.dart';
import '../features/transaction_history/presentation/ui/transaction_history_view_all_ui.dart';

@RoutePage()
class TransactionHistoryViewAllScreen extends StatelessWidget {
  const TransactionHistoryViewAllScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final (theme, _) = appSettingsRecord(context);
    return Scaffold(
      backgroundColor: theme.primaryBackground,
      body: CustomAdaptiveScreen.builder(
        mobile: const TransactionHistoryViewAllUi(),
        tablet: const TransactionHistoryViewAllUi(),
        desktop: const TransactionHistoryViewAllUi(),
      ),
    );
  }
}
