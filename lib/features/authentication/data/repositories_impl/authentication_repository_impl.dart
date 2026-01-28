import 'package:my_nady_project/features/authentication/domain/entities/user_entity.dart';

import '../datasource/authentication_datasource.dart';
import '../models/user_dto/user_dto.dart';
import '../models/user_dto/user.dart';

abstract class BaseAuthenticationRepository {
  Future<UserEntity> loginUser({String? email, String? password});
  Future<UserEntity> registerUser({
    String? email,
    String? password,
    String? name,
    String? phone,
  });
  Future<void> logoutUser();
  Future<void> resetPassword({String? token, String? password});
  Future<User> updateProfile({
    required String name,
    required String gender,
    required String birthDate,
  });
  Future<User> uploadAvatar({required String imagePath});
}

class AuthenticationRepositoryImpl implements BaseAuthenticationRepository {
  final AuthenticationSourceImpl dataSource = AuthenticationSourceImpl();

  @override
  Future<UserEntity> loginUser({String? email, String? password}) async {
    try {
      return await dataSource.loginUser(email: email, password: password).then((
        value,
      ) {
        return value.toEntity();
      });
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<UserEntity> registerUser({
    String? email,
    String? password,
    String? name,
    String? phone,
  }) async {
    try {
      return await dataSource
          .registerUser(
            email: email,
            password: password,
            name: name,
            phone: phone,
          )
          .then((value) {
            return value.toEntity();
          });
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<void> logoutUser() async {
    try {
      await dataSource.logoutUser();
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<void> resetPassword({String? token, String? password}) async {
    try {
      await dataSource.resetPassword(token: token, password: password);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<User> updateProfile({
    required String name,
    required String gender,
    required String birthDate,
  }) async {
    try {
      return await dataSource.updateProfile(
        name: name,
        gender: gender,
        birthDate: birthDate,
      );
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<User> uploadAvatar({required String imagePath}) async {
    try {
      return await dataSource.uploadAvatar(imagePath: imagePath);
    } catch (e) {
      rethrow;
    }
  }
}
