part of 'profile_cubit.dart';

@freezed
abstract class ProfileState with _$ProfileState {
  const factory ProfileState({
    ProfileModel? profile,
    @Default(ProfileStatus.initial) ProfileStatus status,
    GeneralException? exception,
  }) = _ProfileState;
}

enum ProfileStatus {
  initial,
  loading,
  loaded,
  loadFailed,
  saving,
  saved,
  saveFailed,
}
