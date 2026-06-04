import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'gym_view_layout_provider.g.dart';

const _gymViewLayoutKey = 'gym-view-layout';

enum GymLayoutMode { grid, list }

@Riverpod(keepAlive: true)
class GymViewLayout extends _$GymViewLayout {
  @override
  GymLayoutMode build() {
    _loadSavedLayout();
    return GymLayoutMode.grid;
  }

  Future<void> _loadSavedLayout() async {
    final prefs = await SharedPreferences.getInstance();
    final saved = prefs.getString(_gymViewLayoutKey);
    if (saved == GymLayoutMode.list.name) {
      state = GymLayoutMode.list;
    }
  }

  Future<void> setLayout(GymLayoutMode layout) async {
    state = layout;
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_gymViewLayoutKey, layout.name);
  }

  Future<void> toggle() async {
    await setLayout(
      state == GymLayoutMode.grid ? GymLayoutMode.list : GymLayoutMode.grid,
    );
  }
}
