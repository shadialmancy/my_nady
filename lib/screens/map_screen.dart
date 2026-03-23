import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_nady_project/core/constants/app_sizes.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../core/constants/adaptive.dart';
import '../core/helpers/assets_helper.dart';
import '../features/map/presentation/ui/map_ui.dart';

import 'package:google_maps_flutter/google_maps_flutter.dart';

@RoutePage()
class MapScreen extends ConsumerStatefulWidget {
  const MapScreen({super.key, this.initialPosition, this.initialTitle});

  final LatLng? initialPosition;
  final String? initialTitle;

  @override
  ConsumerState<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends ConsumerState<MapScreen> {
  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);
    return Scaffold(
      backgroundColor: theme.primaryBackground,
      appBar: AppBar(
        backgroundColor: theme.white,
        leadingWidth: 50,
        surfaceTintColor: theme.white,
        centerTitle: true,
        leading: Padding(
          padding: .only(left: 5.sw),
          child: GestureDetector(
            onTap: () {
              context.router.maybePop();
            },
            child: SvgPicture.asset(AssetsHelper.backIcon),
          ),
        ),
        title: Text(
          l10n.clubsMap,
          style: theme.headlineMedium.copyWith(color: theme.primary),
        ),
      ),
      body: CustomAdaptiveScreen.builder(
        mobile: MapUi(
          initialPosition: widget.initialPosition,
          initialTitle: widget.initialTitle,
        ),
        tablet: MapUi(
          initialPosition: widget.initialPosition,
          initialTitle: widget.initialTitle,
        ),
        desktop: MapUi(
          initialPosition: widget.initialPosition,
          initialTitle: widget.initialTitle,
        ),
      ),
    );
  }
}
