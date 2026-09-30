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
    required this.passportVerificationStatus,
    required this.identityPhotoStatus,
    required this.familyBookStatus,
    this.profilePicture,
    this.phoneNumber,
    this.passportDocument,
    this.identityPhoto,
    this.familyBookDocument,
  });

  final String id;
  final String? profilePicture;
  final String fullName;
  final String firstName;
  final String lastName;
  final String email;
  final String? phoneNumber;
  final String? passportDocument;
  final DocumentVerificationStatus passportVerificationStatus;
  final String? identityPhoto;
  final DocumentVerificationStatus identityPhotoStatus;
  final String? familyBookDocument;
  final DocumentVerificationStatus familyBookStatus;

  bool get isFullyVerified =>
      passportVerificationStatus == DocumentVerificationStatus.verified &&
      identityPhotoStatus == DocumentVerificationStatus.verified &&
      familyBookStatus == DocumentVerificationStatus.verified;

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
      passportVerificationStatus: DocumentVerificationStatus.fromJson(
        json['passport_verification_status'] as String?,
      ),
      identityPhoto: json['identity_photo'] as String?,
      identityPhotoStatus: DocumentVerificationStatus.fromJson(
        json['identity_photo_status'] as String?,
      ),
      familyBookDocument: json['family_book_document'] as String?,
      familyBookStatus: DocumentVerificationStatus.fromJson(
        json['family_book_status'] as String?,
      ),
    );
  }
}
