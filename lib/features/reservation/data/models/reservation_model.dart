import 'package:ewan/features/home/data/models/properties_model.dart';
import 'package:ewan/features/reservation/data/reservation_status.dart';

enum TripTab { approved, pending, rejected }

class ReservationModel {
  const ReservationModel({
    required this.id,
    required this.property,
    required this.numberOfNights,
    required this.holdExpiresAt,
    required this.remainingHoldSeconds,
    required this.isHoldExpired,
    required this.paymentStatus,
    required this.reservationType,
    required this.createdAt,
    required this.updatedAt,
    required this.checkIn,
    required this.checkOut,
    required this.numberOfGuests,
    required this.pricePerNight,
    required this.ownerAmount,
    required this.adminAmount,
    required this.totalAmount,
    required this.status,
    required this.userId,
    required this.currencyId,
    required this.paymentMethodId,
    this.receiptImage,
    this.rejectionReason,
  });

  final String id;
  final PropertiesModel property;
  final int numberOfNights;
  final DateTime? holdExpiresAt;
  final int? remainingHoldSeconds;
  final bool isHoldExpired;
  final String paymentStatus;
  final String? receiptImage;
  final String reservationType;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final DateTime checkIn;
  final DateTime checkOut;
  final int numberOfGuests;
  final double pricePerNight;
  final double ownerAmount;
  final double adminAmount;
  final double totalAmount;
  final ReservationStatus status;
  final String userId;
  final String currencyId;
  final String paymentMethodId;
  final String? rejectionReason;

  factory ReservationModel.fromJson(Map<String, dynamic> json) {
    return ReservationModel(
      id: json['id'] as String? ?? '',
      property: PropertiesModel.fromJson(
        json['property'] as Map<String, dynamic>,
      ),
      numberOfNights: json['number_of_nights'] as int? ?? 0,
      holdExpiresAt: DateTime.tryParse(
        json['hold_expires_at'] as String? ?? '',
      ),
      // Schema types this as String but it should behave like an int — parse defensively.
      remainingHoldSeconds: int.tryParse(
        json['remaining_hold_seconds']?.toString() ?? '',
      ),
      isHoldExpired: json['is_hold_expired'] as bool? ?? false,
      paymentStatus: json['payment_status'] as String? ?? '',
      receiptImage: json['receipt_image'] as String?,
      reservationType: json['reservation_type'] as String? ?? '',
      createdAt: DateTime.tryParse(json['created_at'] as String? ?? ''),
      updatedAt: DateTime.tryParse(json['updated_at'] as String? ?? ''),
      checkIn: DateTime.parse(json['check_in'] as String),
      checkOut: DateTime.parse(json['check_out'] as String),
      numberOfGuests: json['number_of_guests'] as int? ?? 1,
      pricePerNight:
          double.tryParse(json['price_per_night']?.toString() ?? '') ?? 0,
      ownerAmount: double.tryParse(json['owner_amount']?.toString() ?? '') ?? 0,
      adminAmount: double.tryParse(json['admin_amount']?.toString() ?? '') ?? 0,
      totalAmount: double.tryParse(json['total_amount']?.toString() ?? '') ?? 0,
      status: ReservationStatus.fromJson(json['status'] as String? ?? 'hold'),
      userId: json['user'] as String? ?? '',
      currencyId: json['currency'] as String? ?? '',
      paymentMethodId: json['payment_method'] as String? ?? '',
      rejectionReason: json['rejection_reason'] as String?,
    );
  }

  bool get isEffectivelyExpired =>
      status == ReservationStatus.expired ||
      (status == ReservationStatus.hold && isHoldExpired);

  TripTab get tripTab {
    if (isEffectivelyExpired) return TripTab.rejected;
    switch (status) {
      case ReservationStatus.confirmed:
        return TripTab.approved;
      case ReservationStatus.hold:
      case ReservationStatus.holdApproval:
      case ReservationStatus.pendingPayment:
        return TripTab.pending;
      case ReservationStatus.rejected:
      case ReservationStatus.expired:
      case ReservationStatus.cancelled:
        return TripTab.rejected;
    }
  }

  bool get needsReceiptUpload =>
      !isEffectivelyExpired &&
      (status == ReservationStatus.hold ||
          status == ReservationStatus.pendingPayment) &&
      receiptImage == null;

  bool get canCancel =>
      !isEffectivelyExpired &&
      (status == ReservationStatus.hold ||
          status == ReservationStatus.holdApproval ||
          status == ReservationStatus.pendingPayment);
}
