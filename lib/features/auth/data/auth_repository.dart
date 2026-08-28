import 'package:ewan/features/auth/data/models/city_model.dart';

import '../../../core/core.dart';
import 'data.dart';

class AuthRepository {
  AuthRepository(this._dioClient);

  final DioClient _dioClient;

  Future<AuthModel> signIn({required SignInParams signInParams}) async {
    final Response<dynamic> response = await _dioClient.sendRequest(
      RequestType.post,
      EndPoint.login,
      data: signInParams.toJson(),
    );
    final AuthModel authSuccessResponseModel = AuthModel.fromJson(
      response.data as Map<String, dynamic>,
    );

    return authSuccessResponseModel;
  }

  Future<AuthModel> signInByCode({
    required VerifyAccountParams verifyAccountParams,
  }) async {
    final Response<dynamic> response = await _dioClient.sendRequest(
      RequestType.post,
      EndPoint.loginByCode,
      data: verifyAccountParams.toJson(),
    );
    final AuthModel authSuccessResponseModel = AuthModel.fromJson(
      response.data as Map<String, dynamic>,
    );
    return authSuccessResponseModel;
  }

  Future<AuthModel> signUp({required SignUpParams signUpParams}) async {
    final Response<dynamic> response = await _dioClient.sendRequest(
      RequestType.post,
      EndPoint.register,
      data: signUpParams.toJson(),
    );
    final AuthModel authSuccessResponseModel = AuthModel.fromJson(
      response.data as Map<String, dynamic>,
    );
    return authSuccessResponseModel;
  }

  Future<AuthModel> updateUser({required Map<String, dynamic> body}) async {
    final Response<dynamic> response = await _dioClient.sendRequest(
      RequestType.patch,
      EndPoint.profile,
      data: body,
    );
    final AuthModel authSuccessResponseModel = AuthModel.fromJson(
      response.data as Map<String, dynamic>,
    );
    return authSuccessResponseModel;
  }

  Future<AuthModel> getProfile() async {
    final Response<dynamic> response = await _dioClient.sendRequest(
      RequestType.get,
      EndPoint.profile,
    );
    final AuthModel authSuccessResponseModel = AuthModel.fromJson(
      response.data as Map<String, dynamic>,
    );
    return authSuccessResponseModel;
  }

  Future<AuthModel> verifyAccount({
    required VerifyAccountParams verifyAccountParams,
  }) async {
    final Response<dynamic> response = await _dioClient.sendRequest(
      RequestType.put,
      EndPoint.verify,
      data: verifyAccountParams.toJson(),
    );
    final AuthModel authSuccessResponseModel = AuthModel.fromJson(
      response.data as Map<String, dynamic>,
    );
    return authSuccessResponseModel;
  }

  Future<void> resendVerificationCodeOnEmail({required String email}) async {
    await _dioClient.sendRequest(
      RequestType.post,
      EndPoint.sendVerificationCode,
      data: <String, String>{"email": email},
    );
  }

  Future<void> resetPassword({
    required String resetPasswordCode,
    required String password,
  }) async {
    await _dioClient.sendRequest(
      RequestType.put,
      EndPoint.resetPassword,
      data: <String, String>{
        "reset_password_code": resetPasswordCode,
        "password": password,
      },
    );
  }

  Future<List<CityResult>> getCity() async {
    final Response<dynamic> response = await _dioClient.sendRequest(
      RequestType.get,
      EndPoint.cities,
      queryParameters: <String, dynamic>{'pagination_page_size': 100},
    );
    final CitiesModel citySuccessResponseModel = CitiesModel.fromJson(
      response.data as Map<String, dynamic>,
    );
    return citySuccessResponseModel.results;
  }
}
