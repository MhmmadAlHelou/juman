import 'dart:io';

import 'package:equatable/equatable.dart';
import 'package:ewan/core/core.dart';
import 'package:ewan/features/profile/data/profile_repository.dart';

import '../data/models/profile_model.dart';

part 'identity_verification_status.dart';

class IdentityVerificationCubit extends Cubit<IdentityVerificationState> {
  IdentityVerificationCubit(this._profileRepository)
    : super(const IdentityVerificationState()) {
    loadProfile();
  }

  final ProfileRepository _profileRepository;

  Future<void> loadProfile() async {
    emit(state.copyWith(status: IdentityVerificationStatus.loading));
    try {
      final profile = await _profileRepository.getProfile();
      emit(
        state.copyWith(
          status: IdentityVerificationStatus.loaded,
          profile: profile,
          clearUploadingDocument: true,
        ),
      );
    } on BackendException catch (e) {
      emit(
        state.copyWith(
          status: IdentityVerificationStatus.error,
          errorMessage: e.displayMessage,
          clearUploadingDocument: true,
        ),
      );
    }
  }

  Future<void> uploadDocument(DocumentType type, File file) async {
    emit(
      state.copyWith(
        status: IdentityVerificationStatus.uploading,
        uploadingDocument: type,
      ),
    );
    try {
      switch (type) {
        case DocumentType.nationalId:
          await _profileRepository.uploadIdentityPhoto(file);
        case DocumentType.passport:
          await _profileRepository.uploadPassport(file);
        case DocumentType.familyBook:
          await _profileRepository.uploadFamilyBook(file);
      }
      // response only returns the changed field(s) — refetch full profile
      await loadProfile();
    } on BackendException catch (e) {
      emit(
        state.copyWith(
          status: IdentityVerificationStatus.error,
          errorMessage: e.displayMessage,
          clearUploadingDocument: true,
        ),
      );
    }
  }
}
