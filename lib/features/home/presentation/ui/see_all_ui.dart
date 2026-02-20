import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import '../../../../core/constants/app_sizes.dart';
import '../../../../core/router/app_router.dart';
import 'package:my_nady_project/features/club/data/models/club_dto/datum.dart';
import '../widgets/widgets.dart';

class SeeAllUi extends StatefulWidget {
  const SeeAllUi({super.key, required this.clubs});

  final List<Datum> clubs;

  @override
  State<SeeAllUi> createState() => _SeeAllUiState();
}

class _SeeAllUiState extends State<SeeAllUi> {
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
              hintText: 'Search for gym',
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
          child: GridView.builder(
            padding: EdgeInsets.symmetric(horizontal: 1.sw),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 0.8,
              crossAxisSpacing: 0,
              mainAxisSpacing: 0,
            ),
            itemCount: filteredClubs.length,
            itemBuilder: (context, index) {
              final club = filteredClubs[index];
              return GestureDetector(
                onTap: () {
                  context.router.push(
                    ClubRoute(
                      id: club.id ?? '',
                      distance: club.distance?.toString() ?? '',
                    ),
                  );
                },
                child: ClubCard(
                  club: club,
                  marginBottom: 10,
                  marginTop: 0,
                  marginLeft: 6,
                  marginRight: 6,
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
