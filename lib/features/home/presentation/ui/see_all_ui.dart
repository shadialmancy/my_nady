import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:responsive_builder/responsive_builder.dart';
import '../../../../core/constants/app_sizes.dart';
import 'package:my_nady_project/features/club/data/models/club_dto/datum.dart';
import '../widgets/widgets.dart';

class SeeAllUi extends ConsumerStatefulWidget {
  const SeeAllUi({super.key, required this.clubs});

  final List<Datum> clubs;

  @override
  ConsumerState<SeeAllUi> createState() => _SeeAllUiState();
}

class _SeeAllUiState extends ConsumerState<SeeAllUi> {
  late TextEditingController searchController;
  String searchQuery = '';

  @override
  void initState() {
    super.initState();
    searchController = TextEditingController();
  }

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);
    final filteredClubs = searchQuery.isEmpty
        ? widget.clubs
        : widget.clubs
              .where(
                (c) => (c.name ?? '').toLowerCase().contains(
                  searchQuery.toLowerCase(),
                ),
              )
              .toList();

    return Column(
      children: [
        gapH48,
        Padding(
          padding: .symmetric(horizontal: 3.5.sw),
          child: Row(
            children: [
              IconButton(
                onPressed: () => context.router.maybePop(),
                icon: const Icon(Icons.arrow_back_ios),
              ),
              const Spacer(),
              const GymViewLayoutToggle(),
            ],
          ),
        ),
        gapH16,
        Padding(
          padding: .symmetric(horizontal: 3.5.sw),
          child: TextField(
            controller: searchController,
            onChanged: (value) {
              setState(() {
                searchQuery = value;
              });
            },
            decoration: InputDecoration(
              hintText: l10n.searchForGym,
              prefixIcon: const Icon(Icons.search),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              isDense: true,
            ),
          ),
        ),
        gapH16,
        Expanded(
          child: filteredClubs.isEmpty
              ? Center(
                  child: Text(
                    l10n.noBranchNearBy,
                    style: theme.titleMedium.copyWith(color: theme.grey87),
                  ),
                )
              : ClubCollectionView(
                  clubs: filteredClubs,
                  padding: EdgeInsets.symmetric(horizontal: 1.sw),
                ),
        ),
      ],
    );
  }
}
