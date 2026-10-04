part of 'profile_otp_cubit.dart';

@freezed
abstract class ProfileOtpState with _$ProfileOtpState {
  const factory ProfileOtpState.initial() = _Initial;
  const factory ProfileOtpState.loading() = _Loading;
  const factory ProfileOtpState.succeeded() = _Succeeded;
  const factory ProfileOtpState.failed(GeneralException? exception) = _Failed;

  // Resend OTP
  const factory ProfileOtpState.resending() = _Resending;
  const factory ProfileOtpState.resendSucceeded() = _ResendSucceeded;
  const factory ProfileOtpState.resendFailed(GeneralException? exception) =
      _ResendFailed;
}
