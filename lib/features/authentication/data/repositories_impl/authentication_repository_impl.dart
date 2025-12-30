import 'package:my_nady_project/features/authentication/domain/entities/user_entity.dart';

import '../../../../core/error/custom_error.dart';
import '../datasource/authentication_datasource.dart';
import '../models/user_dto/user_dto.dart';

abstract class BaseAuthenticationRepository {
  Future<UserEntity> loginUser({String? email, String? password});
  Future<UserEntity> registerUser({
    String? email,
    String? password,
    String? name,
    String? phone,
  });
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
    } catch (e, stack) {
      //this throw for us to track the error, it will be caught in the terminal
      throw CustomError('Failed to login', err: e, stackTrace: stack);
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
    } catch (e, stack) {
      throw CustomError('Failed to register', err: e, stackTrace: stack);
    }
  }
}
