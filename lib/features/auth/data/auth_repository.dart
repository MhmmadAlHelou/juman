import 'package:ewan/features/auth/data/models/city_model.dart';

import '../../../core/core.dart';
import 'data.dart';

class AuthRepository {
  AuthRepository(this._dioClient);

  final DioClient _dioClient;

  Future<AuthModel> signIn({required SignInParams signInParams}) async {
    // try {
    //   final Response<dynamic> response = await _dioClient.sendRequest(
    //     RequestType.post,
    //     EndPoint.login,
    //     data: signInParams.toJson(),
    //   );
    //   final AuthModel authSuccessResponseModel = AuthModel.fromJson(
    //     response.data as Map<String, dynamic>,
    //   );
    //   return authSuccessResponseModel;
    // } catch (e) {
    await Future<void>.delayed(const Duration(seconds: 8));

    final Map<String, dynamic> testResponseData = {
      "results": {
        "id": "user_test_id_99",
        "email": signInParams.email,
        "access": "test_access_token_12345",
        "refresh": "test_refresh_token_12345",
        "email_verified": true,
        "full_name": "ewan test",
        "phone_number": "0953659877",
        "first_name": "ewan",
        "last_name": "test",
        "address": "Local Host 127.0.0.1",
        "birth_date": "1997-01-01T00:00:00.000Z",
        "gender": 1,
        "image": null,
        "city": null,
        "reset_password_code": null,
      },
    };

    final AuthModel authSuccessResponseModel = AuthModel.fromJson(
      testResponseData,
    );
    // final AuthModel authSuccessResponseModel = AuthModel.fromJson(
    //   <String, dynamic>{
    //     "results": testResponseData["results"] as Map<String, dynamic>,
    //   },
    // );
    return authSuccessResponseModel;
    // }
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
