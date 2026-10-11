part of 'upload_receipt_cubit.dart';

enum UploadReceiptStatus { idle, uploading, submitting, success, error }

class UploadReceiptState extends Equatable {
  const UploadReceiptState({
    this.status = UploadReceiptStatus.idle,
    required this.reservation,
    this.selectedFile,
    this.remaining,
    this.submissionResult,
    this.errorMessage,
  });

  final UploadReceiptStatus status;
  final ReservationModel reservation;
  final File? selectedFile;
  final Duration? remaining;
  final ReceiptSubmissionResult? submissionResult;
  final String? errorMessage;

  bool get isExpired => remaining != null && remaining! <= Duration.zero;
  bool get canUpload =>
      selectedFile != null &&
      !isExpired &&
      status != UploadReceiptStatus.uploading &&
      status != UploadReceiptStatus.submitting;

  UploadReceiptState copyWith({
    UploadReceiptStatus? status,
    ReservationModel? reservation,
    File? selectedFile,
    Duration? remaining,
    ReceiptSubmissionResult? submissionResult,
    String? errorMessage,
  }) {
    return UploadReceiptState(
      status: status ?? this.status,
      reservation: reservation ?? this.reservation,
      selectedFile: selectedFile ?? this.selectedFile,
      remaining: remaining ?? this.remaining,
      submissionResult: submissionResult ?? this.submissionResult,
      errorMessage: errorMessage,
    );
  }

  @override
  List<Object?> get props => [
    status,
    reservation,
    selectedFile,
    remaining,
    submissionResult,
    errorMessage,
  ];
}
