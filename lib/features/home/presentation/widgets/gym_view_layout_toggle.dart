import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/constants/app_sizes.dart';
import '../../../../core/providers/gym_view_layout_provider.dart';

class GymViewLayoutToggle extends ConsumerWidget {
  const GymViewLayoutToggle({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final (theme, l10n) = appSettingsRecord(context);
    final layout = ref.watch(gymViewLayoutProvider);
    final isGrid = layout == GymLayoutMode.grid;

    return DecoratedBox(
      decoration: BoxDecoration(
        color: theme.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: theme.primary),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          _LayoutToggleButton(
            icon: Icons.grid_view_rounded,
            label: l10n.gridView,
            isSelected: isGrid,
            onTap: () => ref
                .read(gymViewLayoutProvider.notifier)
                .setLayout(GymLayoutMode.grid),
          ),
          Container(width: 1, height: 28, color: theme.primary),
          _LayoutToggleButton(
            icon: Icons.view_list_rounded,
            label: l10n.listView,
            isSelected: !isGrid,
            onTap: () => ref
                .read(gymViewLayoutProvider.notifier)
                .setLayout(GymLayoutMode.list),
          ),
        ],
      ),
    );
  }
}

class _LayoutToggleButton extends StatelessWidget {
  const _LayoutToggleButton({
    required this.icon,
    required this.label,
    required this.isSelected,
    required this.onTap,
  });

  final IconData icon;
  final String label;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final (theme, _) = appSettingsRecord(context);

    return Material(
      color: isSelected ? theme.primary.withValues(alpha: 0.1) : theme.white,
      borderRadius: BorderRadius.circular(11),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(11),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Icon(
            icon,
            size: 20,
            color: isSelected ? theme.primary : theme.grey87,
            semanticLabel: label,
          ),
        ),
      ),
    );
  }
}
