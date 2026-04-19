import 'dart:developer';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../../core/constants/app_constants.dart';
import '../../../notifications/domain/repositories/notification_repository.dart';
import '../../data/models/user_dto/user.dart';
import '../../data/repositories_impl/authentication_repository_impl.dart';
import '../entities/user_entity.dart';

part 'authentication_repository.g.dart';

@Riverpod(keepAlive: true)
class AuthenticationRepository extends _$AuthenticationRepository {
  @override
  FutureOr<void> build() {}

  final AuthenticationRepositoryImpl _authenticationSourceImpl =
      AuthenticationRepositoryImpl();

  UserEntity? _userEntity;
  UserEntity? getUserEntity() => _userEntity;

  User? _user;
  User? getUser() {
    return _user;
  }

  Future<UserEntity?> loginUser({String? email, String? password}) async {
    try {
      _userEntity = await _authenticationSourceImpl.loginUser(
        email: email,
        password: password,
      );

      // Register FCM Token after successful login
      if (_userEntity != null) {
        _handleFcmTokenRegistration();
      }

      return _userEntity;
    } catch (e) {
      rethrow;
    }
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
      _userEntity = await _authenticationSourceImpl.registerUser(
        email: email,
        password: password,
        name: name,
        phone: phone,
        gender: gender,
        birthDate: birthDate,
      );
      return _userEntity;
    } catch (e) {
      rethrow;
    }
  }

  Future<void> resendVerification() async {
    try {
      await _authenticationSourceImpl.resendVerification();
    } catch (e) {
      rethrow;
    }
  }

  Future<void> forgotPassword(String email) async {
    try {
      await _authenticationSourceImpl.forgotPassword(email);
    } catch (e) {
      rethrow;
    }
  }

  Future<void> logoutUser() async {
    try {
      // Remove FCM Token before logout
      await _handleFcmTokenRemoval();

      await _authenticationSourceImpl.logoutUser();
      _userEntity = null;
    } catch (e) {
      rethrow;
    }
  }

  /// Helper to register FCM token with retry mechanism
  Future<void> _handleFcmTokenRegistration() async {
    try {
      // log("message");
      final messaging = FirebaseMessaging.instance;

      // 1. Request permissions (Crucial for Android 13+ and iOS)
      final settings = await messaging.requestPermission(
        alert: true,
        badge: true,
        sound: true,
      );

      if (settings.authorizationStatus == AuthorizationStatus.denied) {
        log('User denied notification permissions');
        return;
      }

      // 2. Fetch token with a simple retry loop (3 attempts)
      String? token;
      int retryCount = 0;
      while (token == null && retryCount < 3) {
        try {
          token = await messaging.getToken();
        } catch (e) {
          retryCount++;
          if (retryCount >= 3) rethrow; // Final attempt failed
          log('FCM token fetch attempt $retryCount failed, retrying in 2s...');
          await Future.delayed(const Duration(seconds: 2));
        }
      }

      log('FCM Messaging Instance: $messaging');
      log('FCM Token: $token');

      if (token != null) {
        final notificationRepo = ref.read(
          notificationRepositoryProvider.notifier,
        );
        await notificationRepo.registerFcmToken(token);
        logger.i('FCM Token registered successfully');
      }
    } catch (e) {
      log('Failed to register FCM Token: $e');
      logger.e('Failed to register FCM Token: $e');
    }
  }

  /// Helper to remove FCM token
  Future<void> _handleFcmTokenRemoval() async {
    try {
      final messaging = FirebaseMessaging.instance;
      final token = await messaging.getToken();
      if (token != null) {
        final notificationRepo = ref.read(
          notificationRepositoryProvider.notifier,
        );
        await notificationRepo.removeFcmToken(token);
        logger.i('FCM Token removed successfully');
      }
    } catch (e) {
      logger.e('Failed to remove FCM Token: $e');
    }
  }

  Future<void> resetPassword({String? token, String? password}) async {
    try {
      await _authenticationSourceImpl.resetPassword(
        token: token,
        password: password,
      );
    } catch (e) {
      rethrow;
    }
  }

  Future<void> verifyEmail({required String token}) async {
    try {
      await _authenticationSourceImpl.verifyEmail(token: token);
    } catch (e) {
      rethrow;
    }
  }

  Future<void> changePassword({
    required String currentPassword,
    required String newPassword,
  }) async {
    try {
      await _authenticationSourceImpl.changePassword(
        currentPassword: currentPassword,
        newPassword: newPassword,
      );
    } catch (e) {
      rethrow;
    }
  }

  Future<User> updateProfile({
    required String name,
    required String gender,
    required String birthDate,
  }) async {
    try {
      return await _authenticationSourceImpl.updateProfile(
        name: name,
        gender: gender,
        birthDate: birthDate,
      );
    } catch (e) {
      rethrow;
    }
  }

  Future<User> uploadAvatar({required String imagePath}) async {
    try {
      return await _authenticationSourceImpl.uploadAvatar(imagePath: imagePath);
    } catch (e) {
      rethrow;
    }
  }
}
