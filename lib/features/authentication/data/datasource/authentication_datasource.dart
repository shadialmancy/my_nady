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
    String? gender,
    String? birthDate,
  });
  Future<void> logoutUser();
  Future<void> resendVerification();
  Future<void> forgotPassword(String email);
  Future<void> resetPassword({String? token, String? password});
  Future<void> verifyEmail({required String token});
  Future<User> updateProfile({
    required String name,
    required String gender,
    required String birthDate,
  });
  Future<void> changePassword({
    required String currentPassword,
    required String newPassword,
  });
  Future<User> uploadAvatar({required String imagePath});
}

class AuthenticationSourceImpl implements AuthenticationSource {
  @override
  Future<UserDto> loginUser({String? email, String? password}) async {
    try {
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
        return UserDto.fromJson(response.data);
      } else {
        throw _handleResponseError(response.data);
      }
    } on DioException catch (e) {
      throw _handleDioError(e);
    } catch (e) {
      throw e.toString();
    }
  }

  @override
  Future<UserDto> registerUser({
    String? email,
    String? password,
    String? name,
    String? phone,
    String? gender,
    String? birthDate,
  }) async {
    try {
      var body = {
        "email": email,
        "password": password,
        "name": name,
        "phone": phone,
        "gender": gender,
        "birthDate": birthDate,
      };

      final response = await DioClient().dio.post(
        AppConstants.registerApiUrl,
        data: body,
      );
      if (response.statusCode == 201) {
        return UserDto.fromJson(response.data);
      } else {
        throw _handleResponseError(response.data);
      }
    } on DioException catch (e) {
      throw _handleDioError(e);
    } catch (e) {
      throw e.toString();
    }
  }

  @override
  Future<void> resendVerification() async {
    try {
      final response = await DioClient().dio.post(
        AppConstants.resendVerificationApiUrl,
      );
      if (response.statusCode == 200 || response.statusCode == 201) {
        return;
      } else {
        throw _parseComplexError(response.data);
      }
    } on DioException catch (e) {
      throw _handleDioError(e);
    } catch (e) {
      throw e.toString();
    }
  }

  @override
  Future<void> forgotPassword(String email) async {
    try {
      final response = await DioClient().dio.post(
        AppConstants.forgotPasswordApiUrl,
        data: {"email": email},
      );
      if (response.statusCode == 200 || response.statusCode == 201) {
        return;
      } else {
        throw _parseComplexError(response.data);
      }
    } on DioException catch (e) {
      throw _handleDioError(e);
    } catch (e) {
      throw e.toString();
    }
  }

  @override
  Future<void> resetPassword({String? token, String? password}) async {
    try {
      var body = {"token": token, "newPassword": password};

      final response = await DioClient().dio.post(
        AppConstants.resetPasswordApiUrl,
        data: body,
      );
      if (response.statusCode == 200 || response.statusCode == 201) {
        return;
      } else {
        throw _parseComplexError(response.data);
      }
    } on DioException catch (e) {
      throw _handleDioError(e);
    } catch (e) {
      throw e.toString();
    }
  }

  @override
  Future<void> verifyEmail({required String token}) async {
    try {
      final response = await DioClient().dio.get(
        AppConstants.verifyEmailApiUrl,
        queryParameters: {"token": token},
      );
      if (response.statusCode == 200 || response.statusCode == 201) {
        return;
      } else {
        throw _parseComplexError(response.data);
      }
    } on DioException catch (e) {
      throw _handleDioError(e);
    } catch (e) {
      throw e.toString();
    }
  }

  @override
  Future<void> logoutUser() async {
    try {
      final refreshToken = await sessionManager.getRefreshToken();
      final response = await DioClient().dio.post(
        AppConstants.logoutApiUrl,
        data: {AppStrings.refreshToken: refreshToken ?? ''},
      );
      if (response.statusCode == 200 || response.statusCode == 204) {
        return;
      } else {
        throw _handleResponseError(response.data);
      }
    } on DioException catch (e) {
      throw _handleDioError(e);
    } catch (e) {
      throw e.toString();
    }
  }

  @override
  Future<User> updateProfile({
    required String name,
    required String gender,
    required String birthDate,
  }) async {
    try {
      final response = await DioClient().dio.patch(
        AppConstants.profileApiUrl,
        data: {'name': name, 'gender': gender, 'birthDate': birthDate},
      );

      if (response.statusCode == 200) {
        return User.fromJson(response.data["data"]);
      } else {
        throw _handleResponseError(response.data);
      }
    } on DioException catch (e) {
      throw _handleDioError(e);
    } catch (e) {
      throw e.toString();
    }
  }

  @override
  Future<void> changePassword({
    required String currentPassword,
    required String newPassword,
  }) async {
    try {
      final response = await DioClient().dio.post(
        AppConstants.changePasswordApiUrl,
        data: {'currentPassword': currentPassword, 'newPassword': newPassword},
      );

      if (response.statusCode == 200 || response.statusCode == 201) {
        return;
      } else {
        throw _parseComplexError(response.data);
      }
    } on DioException catch (e) {
      throw _handleDioError(e);
    } catch (e) {
      throw e.toString();
    }
  }

  @override
  Future<User> uploadAvatar({required String imagePath}) async {
    try {
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
        throw _handleResponseError(response.data);
      }
    } on DioException catch (e) {
      throw _handleDioError(e);
    } catch (e) {
      throw e.toString();
    }
  }

  String _handleResponseError(dynamic data) {
    try {
      final errorModel = ErrorModel.fromJson(data);
      return errorModel.message ?? 'Unknown error';
    } catch (_) {
      return _parseComplexError(data);
    }
  }

  String _handleDioError(DioException e) {
    if (e.response != null && e.response?.data != null) {
      return _handleResponseError(e.response!.data);
    }
    return e.message ?? 'Unknown Network Error';
  }

  String _parseComplexError(dynamic errorData) {
    if (errorData is String) {
      return errorData;
    }
    if (errorData is Map<String, dynamic>) {
      if (errorData['message'] is String) {
        return errorData['message'];
      }
      if (errorData['message'] is Map<String, dynamic>) {
        // e.g. {"message": {"message": ["error1", "error2"]}} or {"message": {"message": "error"}}
        final innerMap = errorData['message'];
        if (innerMap['message'] is List) {
          return (innerMap['message'] as List).join('\n');
        } else if (innerMap['message'] is String) {
          return innerMap['message'];
        }
      }
      if (errorData['message'] is List) {
        return (errorData['message'] as List).join('\n');
      }
    }
    return 'An unexpected error occurred';
  }
}
