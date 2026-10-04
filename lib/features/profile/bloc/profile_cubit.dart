import 'dart:io';

import 'package:ewan/core/core.dart';
import 'package:ewan/features/auth/data/models/log_in_model.dart';
import 'package:ewan/features/profile/data/models/profile_model.dart';
import 'package:ewan/features/profile/data/profile_repository.dart';

part 'profile_cubit.freezed.dart';
part 'profile_state.dart';

class ProfileCubit extends Cubit<ProfileState> {
  ProfileCubit(this._repository, this._userLocalDataSource)
    : super(const ProfileState());

  final ProfileRepository _repository;
  final UserLocalDataSource _userLocalDataSource;

  Future<void> loadProfile({bool silent = false}) async {
    if (!silent) emit(state.copyWith(status: ProfileStatus.loading));
    try {
      final ProfileModel profile = await _repository.getProfile();
      await _syncLocalUser(profile);
      emit(
        state.copyWith(
          profile: profile,
          status: ProfileStatus.loaded,
          exception: null,
        ),
      );
    } on BackendException catch (e) {
      emit(state.copyWith(status: ProfileStatus.loadFailed, exception: e));
    }
  }

  Future<void> updateProfile({
    String? firstName,
    String? lastName,
    String? phoneNumber,
    File? profilePicture,
  }) async {
    emit(state.copyWith(status: ProfileStatus.saving, exception: null));
    try {
      await _repository.updateProfile(
        firstName: firstName,
        lastName: lastName,
        phoneNumber: phoneNumber,
        profilePicture: profilePicture,
      );
      await loadProfile(silent: true);
      emit(state.copyWith(status: ProfileStatus.saved));
    } on BackendException catch (e) {
      emit(state.copyWith(status: ProfileStatus.saveFailed, exception: e));
    }
  }

  Future<void> _syncLocalUser(ProfileModel profile) async {
    final UserData? current = _userLocalDataSource.getUser();
    if (current == null) return;
    await _userLocalDataSource.storeUser(
      current.copyWith(
        email: profile.email,
        fullName: profile.fullName,
        firstName: profile.firstName,
        lastName: profile.lastName,
        phoneNumber: profile.phoneNumber,
        image: profile.profilePicture,
      ),
    );
  }
}
