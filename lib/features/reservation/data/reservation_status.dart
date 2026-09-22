enum ReservationStatus {
  hold,
  holdApproval,
  pendingPayment,
  confirmed,
  expired,
  cancelled,
  rejected;

  static ReservationStatus fromJson(String value) {
    switch (value) {
      case 'hold':
        return ReservationStatus.hold;
      case 'hold_approval':
        return ReservationStatus.holdApproval;
      case 'pending_payment':
        return ReservationStatus.pendingPayment;
      case 'confirmed':
        return ReservationStatus.confirmed;
      case 'expired':
        return ReservationStatus.expired;
      case 'cancelled':
        return ReservationStatus.cancelled;
      case 'rejected':
        return ReservationStatus.rejected;
      default:
        throw ArgumentError('Unknown ReservationStatus: $value');
    }
  }
}
