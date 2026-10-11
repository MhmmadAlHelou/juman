import 'dart:io';

import 'package:ewan/core/core.dart';
import 'package:ewan/features/profile/data/models/profile_model.dart';

abstract class ProfileRepository {
  Future<ProfileModel> getProfile();
  Future<void> uploadPassport(File file);
  Future<void> uploadIdentityPhoto(File file);
  Future<void> uploadFamilyBook(File file);
  Future<void> updateProfile({
    String? firstName,
    String? lastName,
    String? phoneNumber,
    File? profilePicture,
  });
  Future<void> requestPasswordChange({
    required String currentPassword,
    required String newPassword,
    required String confirmPassword,
  });
  Future<void> confirmPasswordChange(String otp);
  Future<void> requestEmailChange(String newEmail);
  Future<void> confirmEmailChange({
    required String newEmail,
    required String otp,
  });
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

  @override
  Future<void> updateProfile({
    String? firstName,
    String? lastName,
    String? phoneNumber,
    File? profilePicture,
  }) async {
    try {
      final formData = FormData.fromMap({
        if (firstName != null) 'first_name': firstName,
        if (lastName != null) 'last_name': lastName,
        if (phoneNumber != null) 'phone_number': phoneNumber,
        if (profilePicture != null)
          'profile_picture': await MultipartFile.fromFile(
            profilePicture.path,
            filename: profilePicture.path.split('/').last,
          ),
      });
      await dioClient.sendRequest(
        RequestType.patch,
        EndPoint.updateProfile,
        formData: formData,
      );
    } on DioException catch (e) {
      throw BackendException(dioException: e);
    }
  }

  @override
  Future<void> requestPasswordChange({
    required String currentPassword,
    required String newPassword,
    required String confirmPassword,
  }) => _post(EndPoint.requestPasswordChange, {
    'current_password': currentPassword,
    'new_password': newPassword,
    'confirm_password': confirmPassword,
  });

  @override
  Future<void> confirmPasswordChange(String otp) =>
      _post(EndPoint.confirmPasswordChange, {'otp': otp});

  @override
  Future<void> requestEmailChange(String newEmail) =>
      _post(EndPoint.requestEmailChange, {'new_email': newEmail});

  @override
  Future<void> confirmEmailChange({
    required String newEmail,
    required String otp,
  }) => _post(EndPoint.confirmEmailChange, {'new_email': newEmail, 'otp': otp});

  Future<void> _post(String endpoint, Map<String, dynamic> data) async {
    try {
      await dioClient.sendRequest(RequestType.post, endpoint, data: data);
    } on DioException catch (e) {
      throw BackendException(dioException: e);
    }
  }
}
