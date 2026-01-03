import 'package:riverpod_annotation/riverpod_annotation.dart';
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
  }) async {
    try {
      _userEntity = await _authenticationSourceImpl.registerUser(
        email: email,
        password: password,
        name: name,
        phone: phone,
      );
      return _userEntity;
    } catch (e) {
      rethrow;
    }
  }

  Future<void> logoutUser() async {
    try {
      await _authenticationSourceImpl.logoutUser();
    } catch (e) {
      rethrow;
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
}
