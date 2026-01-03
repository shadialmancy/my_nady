import 'package:my_nady_project/core/helpers/session_manager.dart';
import 'package:my_nady_project/features/authentication/data/models/user_dto/user_dto.dart';
import '../models/error_model/error_model.dart';

import '../../../../core/api/apis.dart';
import '../../../../core/constants/app_constants.dart';
import '../../../../core/constants/app_strings.dart';

abstract class AuthenticationSource {
  Future<UserDto> loginUser({String? email, String? password});
  Future<UserDto> registerUser({
    String? email,
    String? password,
    String? name,
    String? phone,
  });
  Future<void> logoutUser();
  Future<void> resetPassword({String? token, String? password});
}

class AuthenticationSourceImpl implements AuthenticationSource {
  @override
  Future<UserDto> loginUser({String? email, String? password}) async {
    var body = {AppStrings.email: email, AppStrings.password: password};
    logger.d('loginUser body: $body');
    final response = await DioClient().dio.post(
      AppConstants.loginApiUrl,
      data: body,
    );
    if (response.statusCode == 200) {
      return UserDto.fromJson(response.data);
    } else {
      final errorModel = ErrorModel.fromJson(response.data);
      throw errorModel.message ?? 'Error in registerUser';
    }
  }

  @override
  Future<UserDto> registerUser({
    String? email,
    String? password,
    String? name,
    String? phone,
  }) async {
    var body = {
      "email": email,
      "password": password,
      "name": name,
      "phone": phone,
    };
    logger.d('registerUser body: $body');

    final response = await DioClient().dio.post(
      AppConstants.registerApiUrl,
      data: body,
    );
    if (response.statusCode == 201) {
      return UserDto.fromJson(response.data);
    } else {
      final errorModel = ErrorModel.fromJson(response.data);
      throw errorModel.message ?? 'Error in registerUser';
    }
  }

  @override
  Future<void> resetPassword({String? token, String? password}) async {
    var body = {"token": token, "password": password};
    logger.d('resetPassword body: $body');

    final response = await DioClient().dio.post(
      AppConstants.resetPasswordApiUrl,
      data: body,
    );
    if (response.statusCode == 200) {
      return;
    } else {
      final errorModel = ErrorModel.fromJson(response.data);
      throw errorModel.message ?? 'Error in resetPassword';
    }
  }

  @override
  Future<void> logoutUser() async {
    final refreshToken = await sessionManager.getRefreshToken();
    final response = await DioClient().dio.post(
      AppConstants.logoutApiUrl,
      data: {AppStrings.refreshToken: refreshToken},
    );
    if (response.statusCode == 200) {
      return;
    } else {
      final errorModel = ErrorModel.fromJson(response.data);
      throw errorModel.message ?? 'Error in logout';
    }
  }
}
