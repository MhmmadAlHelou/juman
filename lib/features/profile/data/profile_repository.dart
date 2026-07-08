// import '../../../core/core.dart';
// import '../../auth/auth.dart';
// import 'data.dart';
// import 'models/languages_model.dart';
// import 'params/contact_us.dart';

// class ProfileRepository {
//   final DioClient _dioClient;

//   ProfileRepository(this._dioClient);

//   Future<AuthModel> getProfile() async {
//     final Response<dynamic> response = await _dioClient.sendRequest(
//       RequestType.get,
//       EndPoint.profile,
//     );
//     final AuthModel authSuccessResponseModel = AuthModel.fromJson(
//       response.data as Map<String, dynamic>,
//     );
//     return authSuccessResponseModel;
//   }

//   Future<AuthModel> updateProfile(EditProfileParams editProfileParams) async {
//     final Response<dynamic> response = await _dioClient.sendRequest(
//       RequestType.put,
//       EndPoint.profile,
//       formData: editProfileParams.toFormData(),
//     );
//     final AuthModel authSuccessResponseModel = AuthModel.fromJson(
//       response.data as Map<String, dynamic>,
//     );
//     return authSuccessResponseModel;
//   }

//   Future<AuthModel> changeEmail(String email) async {
//     final Response<dynamic> response = await _dioClient.sendRequest(
//       RequestType.put,
//       EndPoint.changeEmail,
//       data: <String, String>{"email": email},
//     );
//     final AuthModel authSuccessResponseModel = AuthModel.fromJson(
//       response.data as Map<String, dynamic>,
//     );
//     return authSuccessResponseModel;
//   }

//   Future<void> changePassword(ChangePasswordParams changePasswordParams) async {
//     await _dioClient.sendRequest(
//       RequestType.put,
//       EndPoint.changePassword,
//       data: changePasswordParams.toJson(),
//     );
//   }

//   Future<LanguagesModel> getLanguages() async {
//     final Response<dynamic> response = await _dioClient.sendRequest(
//       RequestType.get,
//       EndPoint.languages,
//     );
//     final LanguagesModel responseModel = LanguagesModel.fromJson(
//       response.data as Map<String, dynamic>,
//     );
//     return responseModel;
//   }

//   Future<AuthModel> setLanguage(String languageCode) async {
//     final Response<dynamic> response = await _dioClient.sendRequest(
//       RequestType.patch,
//       EndPoint.profile,
//       data: <String, String>{"language_code": languageCode},
//     );
//     final AuthModel authSuccessResponseModel = AuthModel.fromJson(
//       response.data as Map<String, dynamic>,
//     );
//     return authSuccessResponseModel;
//   }

//   Future<void> deactivateAccount(String message) async {
//     await _dioClient.sendRequest(
//       RequestType.delete,
//       EndPoint.deleteAccount,
//       data: <String, String>{"message": message},
//     );
//   }

//   Future<SystemInfoModel> systemInfo() async {
//     final Response<dynamic> response = await _dioClient.sendRequest(
//       RequestType.get,
//       EndPoint.systemInfo,
//     );
//     final SystemInfoModel responseModel = SystemInfoModel.fromJson(
//       response.data as Map<String, dynamic>,
//     );
//     return responseModel;
//   }

//   Future<void> contactUs(ContactUsParams contactUs) async {
//     await _dioClient.sendRequest(
//       RequestType.post,
//       EndPoint.contactUs,
//       data: contactUs.toJson(),
//     );
//   }

//   Future<AuthModel> verifyAccount({required String code}) async {
//     final Response<dynamic> response = await _dioClient.sendRequest(
//       RequestType.put,
//       EndPoint.verify,
//       data: <String, String>{"code": code},
//     );
//     final AuthModel authSuccessResponseModel = AuthModel.fromJson(
//       response.data as Map<String, dynamic>,
//     );
//     return authSuccessResponseModel;
//   }

//   Future<void> resendVerificationCodeOnEmail({required String email}) async {
//     await _dioClient.sendRequest(
//       RequestType.post,
//       EndPoint.sendVerificationCode,
//       data: <String, String>{"email": email},
//     );
//   }
// }
