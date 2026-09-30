import 'dart:io';

import 'package:ewan/core/core.dart';
import 'package:ewan/features/profile/data/models/profile_model.dart';

abstract class ProfileRepository {
  Future<ProfileModel> getProfile();
  Future<void> uploadPassport(File file);
  Future<void> uploadIdentityPhoto(File file);
  Future<void> uploadFamilyBook(File file);
}

class ProfileRepositoryImpl implements ProfileRepository {
  ProfileRepositoryImpl(this.dioClient);
  final DioClient dioClient;

  @override
  Future<ProfileModel> getProfile() async {
    try {
      final response = await dioClient.sendRequest(
        RequestType.get,
        EndPoint.profile,
      );
      final body = response.data as Map<String, dynamic>;
      return ProfileModel.fromJson(body['data'] as Map<String, dynamic>);
    } on DioException catch (e) {
      throw BackendException(dioException: e);
    }
  }

  @override
  Future<void> uploadPassport(File file) =>
      _uploadDocument(EndPoint.passportDocument, 'passport_document', file);

  @override
  Future<void> uploadIdentityPhoto(File file) =>
      _uploadDocument(EndPoint.selfiePhoto, 'selfie_photo', file);

  @override
  Future<void> uploadFamilyBook(File file) => _uploadDocument(
    EndPoint.familyBookDocument,
    'family_book_document',
    file,
  );

  Future<void> _uploadDocument(
    String endpoint,
    String fieldName,
    File file,
  ) async {
    try {
      final fileName = file.path.split('/').last;
      final formData = FormData.fromMap({
        fieldName: await MultipartFile.fromFile(file.path, filename: fileName),
      });
      await dioClient.sendRequest(
        RequestType.patch,
        endpoint,
        formData: formData,
      );
      // The response returns only the variable field — dependent on getProfile()
      // Then use Cubit to update the complete state, not partial parsing here.
    } on DioException catch (e) {
      throw BackendException(dioException: e);
    }
  }
}

// class MockProfileRepository implements ProfileRepository {
//   ProfileModel _profile = const ProfileModel(
//     id: 'mock-user',
//     fullName: 'Test User',
//     firstName: 'Test',
//     lastName: 'User',
//     email: 'test@example.com',
//     passportVerificationStatus: DocumentVerificationStatus.underReview,
//     identityPhotoStatus: DocumentVerificationStatus.verified,
//     familyBookStatus: DocumentVerificationStatus.pending,
//   );

//   @override
//   Future<ProfileModel> getProfile() async {
//     await Future.delayed(const Duration(milliseconds: 400));
//     return _profile;
//   }

//   @override
//   Future<void> uploadPassport(File file) => _upload(
//     () => _profile = ProfileModel(
//       id: _profile.id,
//       fullName: _profile.fullName,
//       firstName: _profile.firstName,
//       lastName: _profile.lastName,
//       email: _profile.email,
//       passportVerificationStatus: DocumentVerificationStatus.underReview,
//       identityPhotoStatus: _profile.identityPhotoStatus,
//       familyBookStatus: _profile.familyBookStatus,
//     ),
//   );

//   @override
//   Future<void> uploadIdentityPhoto(File file) => _upload(
//     () => _profile = ProfileModel(
//       id: _profile.id,
//       fullName: _profile.fullName,
//       firstName: _profile.firstName,
//       lastName: _profile.lastName,
//       email: _profile.email,
//       passportVerificationStatus: _profile.passportVerificationStatus,
//       identityPhotoStatus: DocumentVerificationStatus.underReview,
//       familyBookStatus: _profile.familyBookStatus,
//     ),
//   );

//   @override
//   Future<void> uploadFamilyBook(File file) => _upload(
//     () => _profile = ProfileModel(
//       id: _profile.id,
//       fullName: _profile.fullName,
//       firstName: _profile.firstName,
//       lastName: _profile.lastName,
//       email: _profile.email,
//       passportVerificationStatus: _profile.passportVerificationStatus,
//       identityPhotoStatus: _profile.identityPhotoStatus,
//       familyBookStatus: DocumentVerificationStatus.underReview,
//     ),
//   );

//   Future<void> _upload(void Function() mutate) async {
//     await Future.delayed(const Duration(milliseconds: 700));
//     mutate();
//   }
// }
