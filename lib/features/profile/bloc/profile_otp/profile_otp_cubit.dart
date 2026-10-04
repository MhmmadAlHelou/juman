import 'package:ewan/core/core.dart';
import 'package:ewan/features/profile/bloc/profile_otp/resend_timer_mixin.dart';
import 'package:ewan/features/profile/data/profile_repository.dart';

part 'profile_otp_state.dart';
part 'profile_otp_cubit.freezed.dart';

enum ProfileOtpPurpose { changePassword, changeEmail }

class ProfileOtpCubit extends Cubit<ProfileOtpState> with ResendTimerMixin {
  ProfileOtpCubit(
    this._repository, {
    required this.purpose,
    required this.onResend,
    this.newEmail,
  }) : super(const ProfileOtpState.initial()) {
    startResendTimer();
  }

  final ProfileRepository _repository;
  final ProfileOtpPurpose purpose;
  final String? newEmail;
  final Future<void> Function() onResend;

  Future<void> verify(String otp) async {
    emit(const ProfileOtpState.loading());
    try {
      switch (purpose) {
        case ProfileOtpPurpose.changePassword:
          await _repository.confirmPasswordChange(otp);
        case ProfileOtpPurpose.changeEmail:
          await _repository.confirmEmailChange(newEmail: newEmail!, otp: otp);
      }
      emit(const ProfileOtpState.succeeded());
    } on BackendException catch (e) {
      emit(ProfileOtpState.failed(e));
    }
  }

  Future<void> resend() async {
    emit(const ProfileOtpState.resending());
    try {
      await onResend();
      startResendTimer();
      emit(const ProfileOtpState.resendSucceeded());
    } on BackendException catch (e) {
      emit(ProfileOtpState.resendFailed(e));
    }
  }
}
