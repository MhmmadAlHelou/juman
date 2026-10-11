import 'package:ewan/features/reservation/data/reservation_status.dart';

class ReceiptSubmissionResult {
  const ReceiptSubmissionResult({
    required this.message,
    required this.propertyTitle,
    required this.checkIn,
    required this.checkOut,
    required this.numberOfGuests,
    required this.reservationStatus,
    required this.reservationStatusLabel,
    required this.amount,
    required this.currency,
    required this.paymentStatus,
    required this.paymentStatusLabel,
    this.submittedAt,
  });

  final String message;
  final String propertyTitle;
  final DateTime checkIn;
  final DateTime checkOut;
  final int numberOfGuests;
  final ReservationStatus reservationStatus;
  final String reservationStatusLabel;
  final double amount;
  final String currency;
  final String paymentStatus;
  final String paymentStatusLabel;
  final DateTime? submittedAt;

  factory ReceiptSubmissionResult.fromJson(Map<String, dynamic> json) {
    return ReceiptSubmissionResult(
      message: json['message'] as String? ?? '',
      propertyTitle: json['property_title'] as String? ?? '',
      checkIn: DateTime.parse(json['check_in'] as String),
      checkOut: DateTime.parse(json['check_out'] as String),
      numberOfGuests: json['number_of_guests'] as int? ?? 1,
      reservationStatus: ReservationStatus.fromJson(
        json['reservation_status'] as String? ?? 'hold_approval',
      ),
      reservationStatusLabel: json['reservation_status_label'] as String? ?? '',
      amount: double.tryParse(json['amount']?.toString() ?? '') ?? 0,
      currency: json['currency'] as String? ?? '',
      paymentStatus: json['payment_status'] as String? ?? '',
      paymentStatusLabel: json['payment_status_label'] as String? ?? '',
      submittedAt: DateTime.tryParse(json['submitted_at'] as String? ?? ''),
    );
  }
}
