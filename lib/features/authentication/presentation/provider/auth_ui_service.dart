import 'package:hive_flutter/adapters.dart';
import 'package:my_nady_project/features/authentication/data/models/user_dto/user.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/shared/widgets/app_toast.dart';
import '../../domain/entities/user_entity.dart';
import '../../domain/repositories/authentication_repository.dart';

part 'auth_ui_service.g.dart';

@Riverpod(keepAlive: true)
class AuthUiService extends _$AuthUiService {
  @override
  FutureOr<User?> build() {
    return fetchSavedUser();
  }

  final String _userInfoBox = 'userInfoBox';

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
    userBox.add(user);
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
          );
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

  void logout() {
    var userBox = Hive.box(_userInfoBox);
    _userEntity = null;
    userBox.clear();
    userBox.close();
    ref.invalidateSelf();
  }
}
