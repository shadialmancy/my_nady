import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../../core/constants/app_sizes.dart';
import '../../../../core/helpers/assets_helper.dart';
import '../../../../core/shared/widgets/widgets.dart';
import '../provider/subscription_ui_service.dart';
import '../widgets/widgets.dart';

class SubscriptionUi extends ConsumerStatefulWidget {
  const SubscriptionUi({super.key});

  @override
  ConsumerState<SubscriptionUi> createState() => _SubscriptionUiState();
}

class _SubscriptionUiState extends ConsumerState<SubscriptionUi>
    with SingleTickerProviderStateMixin {
  late TabController _tabController = TabController(length: 2, vsync: this);

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await ref
          .read(subscriptionUiServiceProvider.notifier)
          .fetchCurrentSubscriptions();
      await ref
          .read(subscriptionUiServiceProvider.notifier)
          .fetchSubscriptionHistory();
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);

    return Scaffold(
      body: Column(
        children: [
          BannerBackground(
            height: 15.sh,
            extraWidget: Stack(
              alignment: Alignment.topLeft,
              children: [
                GestureDetector(
                  onTap: () {
                    context.router.maybePop();
                  },
                  child: SvgPicture.asset(
                    AssetsHelper.backIcon,
                    width: 28,
                    colorFilter: ColorFilter.mode(theme.white, BlendMode.srcIn),
                  ),
                ),
                Positioned(
                  left: 0,
                  right: 0,
                  child: Row(
                    mainAxisAlignment: .center,
                    crossAxisAlignment: .center,
                    children: [
                      SvgPicture.asset(
                        AssetsHelper.subscriptionIcon,
                        colorFilter: ColorFilter.mode(
                          theme.white,
                          BlendMode.srcIn,
                        ),
                      ),
                      gapW4,
                      Text(
                        l10n.subscription,
                        style: theme.headlineSmall.copyWith(
                          color: theme.white,
                          fontSize: 18,
                          fontWeight: .w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: theme.white,
            child: TabBar(
              controller: _tabController,
              labelColor: theme.primary,
              unselectedLabelColor: theme.grey9C,
              indicatorColor: theme.primary,
              indicatorWeight: 3,
              labelStyle: theme.titleMedium.copyWith(
                fontWeight: .w600,
                fontSize: 16,
              ),
              unselectedLabelStyle: theme.titleMedium.copyWith(
                fontWeight: .normal,
                fontSize: 16,
              ),
              tabs: [
                Tab(text: l10n.current),
                Tab(text: l10n.history),
              ],
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                // Current Subscriptions Tab
                AsyncValueWidget(
                  value: ref.watch(subscriptionUiServiceProvider),
                  builder: (_) {
                    final subscriptions =
                        ref
                            .read(subscriptionUiServiceProvider.notifier)
                            .currentSubscriptions
                            ?.data ??
                        [];
                    if (subscriptions.isEmpty) {
                      return Center(
                        child: Text(
                          l10n.noActiveSubscriptions,
                          style: theme.titleMedium.copyWith(
                            color: theme.grey9C,
                          ),
                        ),
                      );
                    }
                    return ListView.builder(
                      padding: .only(
                        top: 20,
                        bottom: 40,
                        left: 3.5.sw,
                        right: 3.5.sw,
                      ),
                      itemCount: subscriptions.length,
                      itemBuilder: (context, index) {
                        final subscription = subscriptions[index];
                        return CurrentSubscriptionCard(
                          subscription: subscription,
                        );
                      },
                    );
                  },
                ),

                // History Tab
                AsyncValueWidget(
                  value: ref.watch(subscriptionUiServiceProvider),
                  builder: (_) {
                    final history =
                        ref
                            .read(subscriptionUiServiceProvider.notifier)
                            .subscriptionHistory
                            ?.data ??
                        [];
                    if (history.isEmpty) {
                      return Center(
                        child: Text(
                          l10n.noSubscriptionHistory,
                          style: theme.titleMedium.copyWith(
                            color: theme.grey9C,
                          ),
                        ),
                      );
                    }
                    return ListView.builder(
                      padding: .only(
                        top: 20,
                        bottom: 40,
                        left: 3.5.sw,
                        right: 3.5.sw,
                      ),
                      itemCount: history.length,
                      itemBuilder: (context, index) {
                        final item = history[index];
                        return HistorySubscriptionCard(historyItem: item);
                      },
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
