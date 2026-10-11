import 'package:ewan/features/profile/data/models/kyc_status_model.dart';

enum DocumentVerificationStatus {
  pending,
  verified,
  rejected,
  underReview,
  unknown;

  static DocumentVerificationStatus fromJson(String? value) {
    switch (value) {
      case 'PENDING':
        return DocumentVerificationStatus.pending;
      case 'VERIFIED':
        return DocumentVerificationStatus.verified;
      case 'REJECTED':
        return DocumentVerificationStatus.rejected;
      case 'UNDER_REVIEW':
        return DocumentVerificationStatus.underReview;
      default:
        return DocumentVerificationStatus.unknown;
    }
  }
}

class ProfileModel {
  const ProfileModel({
    required this.id,
    required this.fullName,
    required this.firstName,
    required this.lastName,
    required this.email,
    this.profilePicture,
    this.phoneNumber,
    this.passportDocument,
    this.selfiePhoto,
    this.familyBookDocument,
    this.kycStatus,
  });

  final String id;
  final String? profilePicture;
  final String fullName;
  final String firstName;
  final String lastName;
  final String email;
  final String? phoneNumber;
  final String? passportDocument;
  final String? selfiePhoto;
  final String? familyBookDocument;
  final KycStatusModel? kycStatus;

  factory ProfileModel.fromJson(Map<String, dynamic> json) {
    return ProfileModel(
      id: json['id'] as String,
      profilePicture: json['profile_picture'] as String?,
      fullName: json['full_name'] as String? ?? '',
      firstName: json['first_name'] as String? ?? '',
      lastName: json['last_name'] as String? ?? '',
      email: json['email'] as String? ?? '',
      phoneNumber: json['phone_number'] as String?,
      passportDocument: json['passport_document'] as String?,
      selfiePhoto: json['selfie_photo'] as String?,
      familyBookDocument: json['family_book_document'] as String?,
      kycStatus: json['kyc_status'] is Map<String, dynamic>
          ? KycStatusModel.fromJson(json['kyc_status'] as Map<String, dynamic>)
          : null,
    );
  }
}
