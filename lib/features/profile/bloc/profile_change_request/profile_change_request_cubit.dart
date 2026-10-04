import 'package:ewan/core/core.dart';
import 'package:ewan/features/profile/data/profile_repository.dart';

part 'profile_change_request_cubit.freezed.dart';
part 'profile_change_request_state.dart';

class ProfileChangeRequestCubit extends Cubit<ProfileChangeRequestState> {
  ProfileChangeRequestCubit(this._repository)
    : super(const ProfileChangeRequestState.initial());

  final ProfileRepository _repository;

  Future<void> requestPasswordChange({
    required String currentPassword,
    required String newPassword,
    required String confirmPassword,
  }) async {
    emit(const ProfileChangeRequestState.loading());
    try {
      await resendPasswordChange(
        currentPassword: currentPassword,
        newPassword: newPassword,
        confirmPassword: confirmPassword,
      );
      emit(const ProfileChangeRequestState.passwordRequested());
    } on BackendException catch (e) {
      emit(ProfileChangeRequestState.failed(e));
    }
  }

  Future<void> requestEmailChange(String newEmail) async {
    emit(const ProfileChangeRequestState.loading());
    try {
      await resendEmailChange(newEmail);
      emit(ProfileChangeRequestState.emailRequested(newEmail));
    } on BackendException catch (e) {
      emit(ProfileChangeRequestState.failed(e));
    }
  }

  // Used as `onResend` in the OTP screen: Do not emit states to prevent re-navigation.
  Future<void> resendPasswordChange({
    required String currentPassword,
    required String newPassword,
    required String confirmPassword,
  }) => _repository.requestPasswordChange(
    currentPassword: currentPassword,
    newPassword: newPassword,
    confirmPassword: confirmPassword,
  );

  Future<void> resendEmailChange(String newEmail) =>
      _repository.requestEmailChange(newEmail);
}
