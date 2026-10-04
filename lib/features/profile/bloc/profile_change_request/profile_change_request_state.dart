part of 'profile_change_request_cubit.dart';

@freezed
abstract class ProfileChangeRequestState with _$ProfileChangeRequestState {
  const factory ProfileChangeRequestState.initial() = _Initial;
  const factory ProfileChangeRequestState.loading() = _Loading;
  const factory ProfileChangeRequestState.passwordRequested() =
      _PasswordRequested;
  const factory ProfileChangeRequestState.emailRequested(String newEmail) =
      _EmailRequested;
  const factory ProfileChangeRequestState.failed(GeneralException? exception) =
      _Failed;
}
