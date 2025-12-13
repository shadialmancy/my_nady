import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_nady_project/core/constants/app_sizes.dart';
import 'package:my_nady_project/features/transaction_history/presentation/widget/widgets.dart';
import '../../../../core/router/app_router.dart';
import '../../../../core/helpers/assets_helper.dart';

class CustomTransactionAppBar extends StatefulWidget {
  const CustomTransactionAppBar({super.key});

  @override
  State<CustomTransactionAppBar> createState() =>
      _CustomTransactionAppBarState();
}

class _CustomTransactionAppBarState extends State<CustomTransactionAppBar> {
  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);
    return Container(
      padding: const .only(top: 12),
      color: theme.white,
      child: Row(
        mainAxisAlignment: .spaceBetween,
        children: [
          SizedBox(
            width: 250,
            child: CustomBackgroundTransaction(
              borderRadius: 12,
              height: 46,
              child: Padding(
                padding: const .all(16),
                child: Row(
                  mainAxisAlignment: .spaceBetween,
                  children: [
                    SvgPicture.asset(AssetsHelper.visaLogo, width: 56),
                    Text(
                      "ending with ***9479",
                      style: theme.labelMedium.copyWith(color: theme.white),
                    ),
                    Icon(Icons.arrow_drop_down_rounded, color: theme.white),
                  ],
                ),
              ),
            ),
          ),
          Container(
            padding: const .symmetric(horizontal: 16, vertical: 14),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: theme.primary, width: 1),
            ),
            child: SvgPicture.asset(
              AssetsHelper.searchIcon,
              colorFilter: ColorFilter.mode(theme.primary, BlendMode.srcIn),
            ),
          ),
          GestureDetector(
            onTap: () {
              context.router.push(const TransactionFilterRoute());
            },
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 11),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: theme.primary, width: 1),
              ),
              child: Row(
                children: [
                  SvgPicture.asset(
                    AssetsHelper.filterIcon,
                    colorFilter: ColorFilter.mode(
                      theme.primary,
                      BlendMode.srcIn,
                    ),
                  ),
                  gapW4,
                  Text(
                    l10n.filter,
                    style: theme.labelSmall.copyWith(
                      color: theme.primary,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
