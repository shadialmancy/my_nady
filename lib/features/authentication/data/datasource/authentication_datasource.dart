import 'package:dio/dio.dart';
import 'package:my_nady_project/core/helpers/session_manager.dart';
import 'package:my_nady_project/features/authentication/data/models/user_dto/user_dto.dart';
import 'package:my_nady_project/features/authentication/data/models/user_dto/user.dart';
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
  Future<User> updateProfile({
    required String name,
    required String gender,
    required String birthDate,
  });
  Future<User> uploadAvatar({required String imagePath});
}

class AuthenticationSourceImpl implements AuthenticationSource {
  @override
  Future<UserDto> loginUser({String? email, String? password}) async {
    var body = {AppStrings.email: email, AppStrings.password: password};
    final response = await DioClient().dio.post(
      AppConstants.loginApiUrl,
      options: Options(
        headers: {
          'Content-Type': 'application/json',
          'X-Client-Type': 'mobile',
        },
      ),
      data: body,
    );
    if (response.statusCode == 200) {
      return UserDto.fromJson(response.data["data"]);
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

  @override
  Future<User> updateProfile({
    required String name,
    required String gender,
    required String birthDate,
  }) async {
    final response = await DioClient().dio.patch(
      AppConstants.profileApiUrl,
      data: {'name': name, 'gender': gender, 'birthDate': birthDate},
    );

    if (response.statusCode == 200) {
      return User.fromJson(response.data["data"]);
    } else {
      final errorModel = ErrorModel.fromJson(response.data);
      throw errorModel.message ?? 'Error in updateProfile';
    }
  }

  @override
  Future<User> uploadAvatar({required String imagePath}) async {
    final fileName = imagePath.split('/').last;
    final formData = FormData.fromMap({
      'image': await MultipartFile.fromFile(imagePath, filename: fileName),
    });

    final response = await DioClient().dio.post(
      AppConstants.uploadAvatarApiUrl,
      data: formData,
    );

    if (response.statusCode == 201 || response.statusCode == 200) {
      return User.fromJson(response.data["data"]);
    } else {
      final errorModel = ErrorModel.fromJson(response.data);
      throw errorModel.message ?? 'Error in uploadAvatar';
    }
  }
}
