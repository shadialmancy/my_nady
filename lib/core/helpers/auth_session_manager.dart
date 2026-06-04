import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_nady_project/core/helpers/auth_token_manager.dart';
import 'package:my_nady_project/core/helpers/session_manager.dart';
import 'package:my_nady_project/features/authentication/presentation/provider/auth_ui_service.dart';

/// Restores or clears the session when the app starts.
class AuthSessionManager {
  AuthSessionManager._();

  /// Runs before the UI loads (see [appStartupProvider]).
  static Future<void> initializeOnAppStart(Ref ref) async {
    await _syncSessionState();
    ref.invalidate(authUiServiceProvider);
  }

  static Future<void> _syncSessionState() async {
    final accessToken = await sessionManager.getAuthToken();
    final refreshToken = await sessionManager.getRefreshToken();

    final hasAccess = accessToken != null && accessToken.isNotEmpty;
    final hasRefresh = refreshToken != null && refreshToken.isNotEmpty;

    if (!hasAccess && !hasRefresh) {
      await sessionManager.clearAuthSession();
      return;
    }

    if (await sessionManager.isRefreshTokenExpired()) {
      await sessionManager.clearAuthSession();
      return;
    }

    if (!hasAccess && hasRefresh) {
      final refreshed = await AuthTokenManager.refreshAndPersistTokens();
      if (!refreshed) {
        await sessionManager.clearAuthSession();
      }
      return;
    }

    if (await sessionManager.isAccessTokenExpired()) {
      final refreshed = await AuthTokenManager.refreshAndPersistTokens();
      if (!refreshed) {
        await sessionManager.clearAuthSession();
      }
    }
  }
}
