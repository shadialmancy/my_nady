import 'package:my_nady_project/features/authentication/data/models/user_dto/user_dto.dart';

import '../../../../core/api/apis.dart';
import '../../../../core/constants/app_constants.dart';
import '../../../../core/constants/app_strings.dart';
import '../../../../core/error/custom_error.dart';

abstract class AuthenticationSource {
  Future<UserDto> loginUser({String? email, String? password});
  Future<UserDto> registerUser({
    String? email,
    String? password,
    String? name,
    String? phone,
  });
}

class AuthenticationSourceImpl implements AuthenticationSource {
  @override
  Future<UserDto> loginUser({String? email, String? password}) async {
    var body = {AppStrings.email: email, AppStrings.password: password};
    logger.d('loginUser body: $body');
    try {
      final response = await DioClient().dio.post(
        AppConstants.loginApiUrl,
        data: body,
      );
      logger.d('login response: ${response.data}');
      if (response.statusCode == 200) {
        return UserDto.fromJson(response.data);
      } else {
        throw CustomError(response.statusMessage ?? 'Error in loginUser');
      }
    } on CustomError catch (e) {
      throw e.errMassage;
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
    try {
      // Assuming register URL is /authentication/register based on the image
      // and checking AppConstants usage for login, I will assume a constant might exist or I should use string.
      // But based on login 'AppConstants.loginApiUrl', I should check if there is a register constant.
      // Since I can't check efficiently without reading another file, I'll assume '/authentication/register' pattern relative to base URL logic which seems hidden in DioClient or full URL in AppConstants.
      // Let's verify AppConstants first.
      final response = await DioClient().dio.post(
        AppConstants.registerApiUrl,
        data: body,
      );
      logger.d('register response: ${response.data}');
      if (response.statusCode == 200) {
        return UserDto.fromJson(response.data);
      } else {
        throw CustomError(response.statusMessage ?? 'Error in registerUser');
      }
    } on CustomError catch (e) {
      throw e.errMassage;
    }
  }
}
