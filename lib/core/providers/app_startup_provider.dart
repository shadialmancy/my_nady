import 'package:my_nady_project/core/constants/app_constants.dart';
import 'package:my_nady_project/core/helpers/auth_session_manager.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_startup_provider.g.dart';

@Riverpod(keepAlive: true)
class AppStartup extends _$AppStartup {
  @override
  FutureOr<void> build() async {
    logger.i('App startup: restoring auth session');
    await AuthSessionManager.initializeOnAppStart(ref);
    logger.i('App startup: session ready');
  }
}
