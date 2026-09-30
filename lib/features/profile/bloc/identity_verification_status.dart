part of 'identity_verification_cubit.dart';

enum DocumentType { nationalId, passport, familyBook }

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

  DocumentVerificationStatus statusFor(DocumentType type) {
    final p = profile;
    if (p == null) return DocumentVerificationStatus.unknown;
    switch (type) {
      case DocumentType.nationalId:
        return p.identityPhotoStatus;
      case DocumentType.passport:
        return p.passportVerificationStatus;
      case DocumentType.familyBook:
        return p.familyBookStatus;
    }
  }

  DocumentVerificationStatus displayStatusFor(DocumentType type) {
    if (!hasDocument(type)) return DocumentVerificationStatus.pending;
    final status = statusFor(type);
    return status == DocumentVerificationStatus.pending
        ? DocumentVerificationStatus.underReview
        : status;
  }

  bool hasDocument(DocumentType type) {
    final p = profile;
    if (p == null) return false;
    switch (type) {
      case DocumentType.nationalId:
        return p.identityPhoto != null;
      case DocumentType.passport:
        return p.passportDocument != null;
      case DocumentType.familyBook:
        return p.familyBookDocument != null;
    }
  }

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
