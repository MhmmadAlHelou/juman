enum KycStatusValue {
  underReview,
  verified,
  rejected,
  notSubmitted,
  unknown;

  static KycStatusValue fromJson(String? value) {
    switch (value) {
      case 'UNDER_REVIEW':
        return KycStatusValue.underReview;
      case 'VERIFIED':
      case 'APPROVED':
        return KycStatusValue.verified;
      case 'REJECTED':
        return KycStatusValue.rejected;
      case 'NOT_SUBMITTED':
        return KycStatusValue.notSubmitted;
      default:
        return KycStatusValue.unknown;
    }
  }
}

class KycStatusModel {
  const KycStatusModel({required this.status, required this.message});
  final KycStatusValue status;
  final String message;

  factory KycStatusModel.fromJson(Map<String, dynamic> json) {
    return KycStatusModel(
      status: KycStatusValue.fromJson(json['status'] as String?),
      message: json['message'] as String? ?? '',
    );
  }
}
