import 'package:hive_flutter/adapters.dart';
import 'package:my_nady_project/features/authentication/data/models/user_dto/user.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../../core/helpers/session_manager.dart';

import '../../../../core/shared/widgets/app_toast.dart';
import '../../domain/entities/user_entity.dart';
import '../../domain/repositories/authentication_repository.dart';
import '../../../../main.dart';
import '../../../../core/router/app_router.dart';

part 'auth_ui_service.g.dart';

@Riverpod(keepAlive: true)
class AuthUiService extends _$AuthUiService {
  @override
  FutureOr<User?> build() async {
    final user = await fetchSavedUser();
    if (user != null) {
      final isExpired = await _isRefreshTokenExpired();
      if (isExpired) {
        logout();
        return null;
      }
    }
    return user;
  }

  final String _userInfoBox = 'userInfoBox';

  Future<bool> _isRefreshTokenExpired() async {
    final expiresAtStr = await sessionManager.getRefreshTokenExpiresAt();
    if (expiresAtStr == null) return false;
    try {
      final expiresAt = DateTime.parse(expiresAtStr);
      return DateTime.now().isAfter(expiresAt);
    } catch (e) {
      return false;
    }
  }

  Future<User?> fetchSavedUser() async {
    if (!Hive.isBoxOpen(_userInfoBox)) {
      try {
        await Hive.openBox(_userInfoBox);
      } catch (e) {
        // Handle any errors that may occur during the box opening
        //   logger.e("Error opening box: $e");
        return null;
      }
    }

    var userBox = Hive.box(_userInfoBox);
    if (userBox.isNotEmpty) {
      return userBox.getAt(0);
    }
    return null;
  }

  Future<void> saveUser(User user) async {
    bool exists = Hive.isBoxOpen(_userInfoBox);
    if (!exists) {
      await Hive.openBox(_userInfoBox);
    }
    var userBox = Hive.box(_userInfoBox);
    await userBox.clear();
    await userBox.add(user);
  }

  UserEntity? _userEntity;
  UserEntity? getUserEntity() => _userEntity;

  Future<UserEntity?> loginUser({String? email, String? password}) async {
    try {
      _userEntity = null;
      state = const AsyncValue.loading();

      _userEntity = await ref
          .read(authenticationRepositoryProvider.notifier)
          .loginUser(email: email, password: password);

      if (_userEntity != null) {
        await sessionManager.setAuthToken(token: _userEntity!.accessToken);
        await sessionManager.setRefreshToken(token: _userEntity!.refreshToken);
        await sessionManager.setAccessTokenExpiresAt(
          expiresAt: _userEntity!.accessTokenExpiresAt,
        );
        await sessionManager.setRefreshTokenExpiresAt(
          expiresAt: _userEntity!.refreshTokenExpiresAt,
        );

        if (_userEntity!.user != null) {
          await saveUser(_userEntity!.user!);
        }
      }

      await fetchSavedUser();
      state = AsyncValue.data(_userEntity?.user);
      return _userEntity;
    } catch (e) {
      state = const AsyncValue.data(null);
      AppToast.errorToast(e.toString());
    }
    return null;
  }

  Future<UserEntity?> registerUser({
    String? email,
    String? password,
    String? name,
    String? phone,
    String? gender,
    String? birthDate,
  }) async {
    try {
      _userEntity = null;
      state = const AsyncValue.loading();
      _userEntity = await ref
          .read(authenticationRepositoryProvider.notifier)
          .registerUser(
            email: email,
            password: password,
            name: name,
            phone: phone,
            gender: gender,
            birthDate: birthDate,
          );
      if (_userEntity != null) {
        await sessionManager.setAuthToken(token: _userEntity!.accessToken);
        await sessionManager.setRefreshToken(token: _userEntity!.refreshToken);
        await sessionManager.setAccessTokenExpiresAt(
          expiresAt: _userEntity!.accessTokenExpiresAt,
        );
        await sessionManager.setRefreshTokenExpiresAt(
          expiresAt: _userEntity!.refreshTokenExpiresAt,
        );

        if (_userEntity!.user != null) {
          await saveUser(_userEntity!.user!);
        }
      }

      await fetchSavedUser();
      state = AsyncValue.data(_userEntity?.user);
      return _userEntity;
    } catch (e) {
      state = const AsyncValue.data(null);
      AppToast.errorToast(e.toString());
    }
    return null;
  }

  void reset() {
    _userEntity = null;
  }

  Future<void> logoutUser() async {
    try {
      state = const AsyncValue.loading();
      await ref.read(authenticationRepositoryProvider.notifier).logoutUser();
    } catch (e) {
      AppToast.errorToast(e.toString());
    } finally {
      await logout();
    }
  }

  Future<void> clearSession() async {
    _userEntity = null;
    await sessionManager.setAuthToken(token: null);
    await sessionManager.setRefreshToken(token: null);
    await sessionManager.setAccessTokenExpiresAt(expiresAt: null);
    await sessionManager.setRefreshTokenExpiresAt(expiresAt: null);
    if (Hive.isBoxOpen(_userInfoBox)) {
      var userBox = Hive.box(_userInfoBox);
      await userBox.clear();
    }
  }

  Future<void> logout() async {
    await clearSession();
    final context = appRouter.navigatorKey.currentContext;
    if (context != null && context.mounted) {
      ProviderScopeManager.restartApp(context);
    } else {
      ref.invalidateSelf();
    }
  }

  Future<void> resetPassword({String? token, String? password}) async {
    try {
      state = const AsyncValue.loading();
      await ref
          .read(authenticationRepositoryProvider.notifier)
          .resetPassword(token: token, password: password);
      state = const AsyncValue.data(null);
      AppToast.successToast('Password reset successfully');
    } catch (e) {
      state = const AsyncValue.data(null);
      AppToast.errorToast(e.toString());
      rethrow;
    }
  }

  Future<void> changePassword({
    required String currentPassword,
    required String newPassword,
  }) async {
    try {
      state = const AsyncValue.loading();
      await ref
          .read(authenticationRepositoryProvider.notifier)
          .changePassword(
            currentPassword: currentPassword,
            newPassword: newPassword,
          );
      state = AsyncValue.data(_userEntity?.user);
      AppToast.successToast('Password changed successfully');
    } catch (e) {
      state = AsyncValue.data(_userEntity?.user);
      AppToast.errorToast(e.toString());
      rethrow;
    }
  }

  Future<void> updateProfile({
    required String name,
    required String gender,
    required String birthDate,
  }) async {
    try {
      state = const AsyncValue.loading();
      final currentUser = state.value ?? await fetchSavedUser();

      final updatedUser = await ref
          .read(authenticationRepositoryProvider.notifier)
          .updateProfile(name: name, gender: gender, birthDate: birthDate);
      // Merge with current user to avoid losing fields like email/phone if API doesn't return them
      final finalUser = updatedUser.copyWith(
        email: updatedUser.email ?? currentUser?.email,
        phone: updatedUser.phone ?? currentUser?.phone,
        role: updatedUser.role ?? currentUser?.role,
        status: updatedUser.status ?? currentUser?.status,
        createdAt: updatedUser.createdAt ?? currentUser?.createdAt,
      );

      await saveUser(finalUser);
      _userEntity = _userEntity?.copyWith(user: finalUser);
      state = AsyncValue.data(finalUser);
      AppToast.successToast('Profile updated successfully');
    } catch (e) {
      final user = await fetchSavedUser();
      state = AsyncValue.data(user);
      AppToast.errorToast(e.toString());
      rethrow;
    }
  }

  Future<void> uploadAvatar({required String imagePath}) async {
    try {
      state = const AsyncValue.loading();
      final currentUser = state.value ?? await fetchSavedUser();

      final updatedUser = await ref
          .read(authenticationRepositoryProvider.notifier)
          .uploadAvatar(imagePath: imagePath);

      // Merge with current user to avoid losing fields
      final finalUser = updatedUser.copyWith(
        name: updatedUser.name ?? currentUser?.name,
        email: updatedUser.email ?? currentUser?.email,
        phone: updatedUser.phone ?? currentUser?.phone,
        gender: updatedUser.gender ?? currentUser?.gender,
        birthDate: updatedUser.birthDate ?? currentUser?.birthDate,
        role: updatedUser.role ?? currentUser?.role,
        status: updatedUser.status ?? currentUser?.status,
        createdAt: updatedUser.createdAt ?? currentUser?.createdAt,
      );

      await saveUser(finalUser);
      _userEntity = _userEntity?.copyWith(user: finalUser);
      state = AsyncValue.data(finalUser);
      AppToast.successToast('Profile picture uploaded successfully');
    } catch (e) {
      final user = await fetchSavedUser();
      state = AsyncValue.data(user);
      AppToast.errorToast(e.toString());
      rethrow;
    }
  }
}
