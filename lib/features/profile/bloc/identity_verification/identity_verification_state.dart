part of 'identity_verification_cubit.dart';

enum DocumentType { selfie, passport, familyBook }

enum IdentityVerificationStatus { initial, loading, loaded, uploading, error }

class IdentityVerificationState extends Equatable {
  const IdentityVerificationState({
    this.status = IdentityVerificationStatus.initial,
    this.profile,
    this.uploadingDocument,
    this.errorMessage,
  });

  final IdentityVerificationStatus status;
  final ProfileModel? profile;
  final DocumentType? uploadingDocument;
  final String? errorMessage;

  // DocumentVerificationStatus statusFor(DocumentType type) {
  //   final p = profile;
  //   if (p == null) return DocumentVerificationStatus.unknown;
  //   switch (type) {
  //     case DocumentType.selfie:
  //       return p.selfiePhoto;
  //     case DocumentType.passport:
  //       return p.passportVerificationStatus;
  //     case DocumentType.familyBook:
  //       return p.familyBookStatus;
  //   }
  // }

  DocumentVerificationStatus displayStatusFor(DocumentType type) {
    if (!hasDocument(type)) {
      return DocumentVerificationStatus.pending;
    }
    switch (profile?.kycStatus?.status) {
      case KycStatusValue.underReview:
        return DocumentVerificationStatus.underReview;
      case KycStatusValue.verified:
        return DocumentVerificationStatus.verified;
      case KycStatusValue.rejected:
        return DocumentVerificationStatus.rejected;
      default:
        return DocumentVerificationStatus.pending;
    }
  }

  bool hasDocument(DocumentType type) {
    final p = profile;
    if (p == null) return false;
    switch (type) {
      case DocumentType.selfie:
        return p.selfiePhoto != null;
      case DocumentType.passport:
        return p.passportDocument != null;
      case DocumentType.familyBook:
        return p.familyBookDocument != null;
    }
  }

  bool canUpload(DocumentType type) =>
      !hasDocument(type) ||
      displayStatusFor(type) == DocumentVerificationStatus.rejected;

  bool isUploading(DocumentType type) =>
      status == IdentityVerificationStatus.uploading &&
      uploadingDocument == type;

  IdentityVerificationState copyWith({
    IdentityVerificationStatus? status,
    ProfileModel? profile,
    DocumentType? uploadingDocument,
    String? errorMessage,
    bool clearUploadingDocument = false,
  }) {
    return IdentityVerificationState(
      status: status ?? this.status,
      profile: profile ?? this.profile,
      uploadingDocument: clearUploadingDocument
          ? null
          : (uploadingDocument ?? this.uploadingDocument),
      errorMessage: errorMessage,
    );
  }

  @override
  List<Object?> get props => [status, profile, uploadingDocument, errorMessage];
}
