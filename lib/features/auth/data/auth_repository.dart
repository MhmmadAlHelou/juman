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

  Future<SignUpModel> signUp({required SignUpParams signUpParams}) async {
    final Response<dynamic> response = await _dioClient.sendRequest(
      RequestType.post,
      EndPoint.signup,
      data: signUpParams.toJson(),
    );
    final SignUpModel signUpResponseModel = SignUpModel.fromJson(
      response.data as Map<String, dynamic>,
    );
    return signUpResponseModel;
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

  Future<MessageResponseModel> verifyAccount({
    required VerifyAccountParams verifyAccountParams,
  }) async {
    final Response<dynamic> response = await _dioClient.sendRequest(
      RequestType.post,
      EndPoint.verifyOtp,
      data: verifyAccountParams.toJson(),
    );
    // final AuthModel authSuccessResponseModel = AuthModel.fromJson(
    //   response.data as Map<String, dynamic>,
    // );
    // return authSuccessResponseModel;
    return MessageResponseModel.fromJson(response.data as Map<String, dynamic>);
  }

  Future<void> resendVerificationCodeOnEmail({required String email}) async {
    await _dioClient.sendRequest(
      RequestType.post,
      EndPoint.resendOtp,
      data: <String, String>{"identifier": email},
    );
  }

  Future<MessageResponseModel> forgotPassword({
    required String identifier,
  }) async {
    final FormData formData = FormData.fromMap(<String, dynamic>{
      'identifier': identifier,
    });
    final Response<dynamic> response = await _dioClient.sendRequest(
      RequestType.post,
      EndPoint.forgotPassword,
      formData: formData,
    );
    return MessageResponseModel.fromJson(response.data as Map<String, dynamic>);
  }

  Future<MessageResponseModel> resetPassword({
    required String identifier,
    required String otp,
    required String newPassword,
  }) async {
    final FormData formData = FormData.fromMap(<String, dynamic>{
      'identifier': identifier,
      'otp': otp,
      'new_password': newPassword,
    });
    final Response<dynamic> response = await _dioClient.sendRequest(
      RequestType.post,
      EndPoint.resetPassword,
      formData: formData,
    );
    return MessageResponseModel.fromJson(response.data as Map<String, dynamic>);
  }
}
