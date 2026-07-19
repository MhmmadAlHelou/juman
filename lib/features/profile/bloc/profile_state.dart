// part of 'profile_bloc.dart';

// @freezed
// class ProfileState with _$ProfileState {
//   const factory ProfileState.initial() = _Initial;

//   const factory ProfileState.loading() = _Loading;

//   const factory ProfileState.getProfileSucceed({
//     @Default(null) UserData? userData,
//   }) = _GetProfileSucceed;

//   const factory ProfileState.failed({
//     @Default(null) GeneralException? generalException,
//   }) = _Failed;

//   const factory ProfileState.loadingUpdateProfile() = _LoadingUpdateProfile;

//   const factory ProfileState.failedUpdateProfile({
//     @Default(null) GeneralException? generalException,
//   }) = _FailedUpdateProfile;

//   const factory ProfileState.succeed({@Default(null) String? message}) =
//       _Succeed;

//   const factory ProfileState.changePasswordFailed({
//     @Default(null) GeneralException? generalException,
//   }) = _ChangePasswordFailed;

//   const factory ProfileState.changePasswordLoading() = _ChangePasswordLoading;

//   const factory ProfileState.changePasswordSucceed({
//     @Default(null) String? message,
//   }) = _ChangePasswordSucceed;

//   const factory ProfileState.emailNeedVerify() = _EmailNeedVerify;

//   const factory ProfileState.loadingLanguages() = _LoadingLanguages;

//   const factory ProfileState.languagesFailed({
//     @Default(null) GeneralException? generalException,
//   }) = _LanguagesFailed;

//   const factory ProfileState.getLanguagesSucceed({
//     @Default(<LanguageData>[]) List<LanguageData> languages,
//   }) = _GetLanguagesSucceed;

//   const factory ProfileState.loadingSetLanguage() = _LoadingSetLanguage;
//   const factory ProfileState.setLanguageFailed({
//     @Default(null) GeneralException? generalException,
//   }) = _SetLanguageFailed;
//   const factory ProfileState.setLanguageSucceed() = _SetLanguageSucceed;

//   const factory ProfileState.loadingDeactivateAccount() =
//       _LoadingDeactivateAccount;

//   const factory ProfileState.failedDeactivateAccount({
//     @Default(null) GeneralException? generalException,
//   }) = _FailedDeactivateAccount;

//   const factory ProfileState.succeedDeactivateAccount({
//     @Default(null) String? message,
//   }) = _SucceedDeactivateAccount;

//   const factory ProfileState.loadingSystemInfo() = _LoadingSystemInfo;

//   const factory ProfileState.failedSystemInfo({
//     @Default(null) GeneralException? generalException,
//   }) = _FailedSystemInfo;

//   const factory ProfileState.succeedSystemInfo({
//     @Default(null) SystemInfoModel? data,
//   }) = _SucceedSystemInfo;

//   // Verify Account
//   const factory ProfileState.loadingVerifyAccount() = _LoadingVerifyAccount;

//   const factory ProfileState.verifyAccountSucceed() = _VerifyAccountSucceed;

//   const factory ProfileState.verifyAccountFailed({
//     @Default(null) GeneralException? generalException,
//   }) = _VerifyAccountFailed;

//   // Resend Verification code
//   const factory ProfileState.loadingResendVerificationCode() =
//       _LoadingResendVerificationCode;

//   const factory ProfileState.resendVerificationCodeSucceed({
//     @Default(null) String? message,
//   }) = _ResendVerificationCodeSucceed;

//   const factory ProfileState.resendVerificationCodeFailed({
//     @Default(null) GeneralException? generalException,
//   }) = _ResendVerificationCodeFailed;

//   const factory ProfileState.remainingTimeForResend({
//     @Default(0) int? remainingTime,
//   }) = _RemainingTimeForResend;

//   const factory ProfileState.guestUser() = _GuestUser;
// }
