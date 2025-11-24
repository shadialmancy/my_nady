import 'package:my_nady_project/core/constants/app_constants.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_startup_provider.g.dart';

@Riverpod(keepAlive: true)
class AppStartup extends _$AppStartup {
  @override
  FutureOr<void> build() async {
    // ref.onDispose(() {
    logger.i('disposing app startup');
    // ref.invalidate(authUiServiceProvider);
    // });
    // state = const AsyncValue.loading();

    logger.i('Remain app startup');

    // state = const AsyncValue.data(null);

    return;
  }
}
