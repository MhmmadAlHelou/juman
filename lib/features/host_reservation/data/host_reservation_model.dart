class HostReservationModel {
  const HostReservationModel({
    required this.id,
    required this.propertyTitle,
    required this.guestName,
    required this.numberOfNights,
    required this.reservationStatus,
    required this.statusBadgeColor,
    required this.ownerReceivable,
    required this.payoutStatus,
    required this.payoutMessage,
    this.propertyCoverImage,
    this.checkIn,
    this.checkOut,
    this.paymentDate,
    this.paymentReceipt,
  });

  final String id;
  final String propertyTitle;
  final String? propertyCoverImage;
  final String guestName;
  final DateTime? checkIn;
  final DateTime? checkOut;
  final int numberOfNights;
  final String reservationStatus;
  final String statusBadgeColor;
  final double ownerReceivable;
  final String payoutStatus;
  final String payoutMessage;
  final DateTime? paymentDate; // from detail only
  final String? paymentReceipt; // from detail only

  bool get isPaid => payoutStatus.toLowerCase() == 'paid';

  factory HostReservationModel.fromJson(Map<String, dynamic> json) {
    String str(String k) => json[k]?.toString() ?? '';
    String? opt(String k) {
      final v = str(k);
      return v.isEmpty ? null : v;
    }

    return HostReservationModel(
      id: str('id'),
      propertyTitle: str('property_title'),
      propertyCoverImage: opt('property_cover_image'),
      guestName: str('guest_name'),
      checkIn: DateTime.tryParse(str('check_in')),
      checkOut: DateTime.tryParse(str('check_out')),
      numberOfNights: int.tryParse(str('number_of_nights')) ?? 0,
      reservationStatus: str('reservation_status'),
      statusBadgeColor: str('status_badge_color'),
      ownerReceivable: double.tryParse(str('property_owner_receivable')) ?? 0,
      payoutStatus: str('payout_status'),
      payoutMessage: str('payout_message'),
      paymentDate: DateTime.tryParse(str('payment_date')),
      paymentReceipt: opt('payment_receipt'),
    );
  }
}
