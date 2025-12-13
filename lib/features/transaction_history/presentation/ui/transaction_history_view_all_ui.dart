import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../../core/constants/app_sizes.dart';
import '../../../../core/helpers/assets_helper.dart';
import '../widget/widgets.dart';

class TransactionHistoryViewAllUi extends StatelessWidget {
  const TransactionHistoryViewAllUi({super.key});

  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);
    return Padding(
      padding: .only(top: 6.sh, left: 3.sw, right: 3.sw),
      child: Column(
        children: [
          CustomTransactionAppBar(),
          Expanded(
            child: ListView(
              padding: .only(bottom: 16.sh),
              children: List.generate(
                transactionHistoryData.length,
                (index) => Container(
                  padding: const .all(10),
                  margin: const .only(bottom: 10),
                  decoration: BoxDecoration(
                    borderRadius: .circular(16),
                    border: .all(color: theme.greyE0.withValues(alpha: .6)),
                  ),
                  child: TransactionDetailsCard(
                    data: transactionHistoryData[index],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
