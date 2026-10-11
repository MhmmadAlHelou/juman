class ReservationInvoiceModel {
  const ReservationInvoiceModel({
    required this.invoiceNumber,
    required this.reservationNumber,
    required this.propertyName,
    required this.propertyOwnerName,
    required this.numberOfNights,
    required this.numberOfGuests,
    required this.paymentMethod,
    required this.pricePerNight,
    required this.totalPaid,
    required this.currency,
    required this.reservationStatus,
    this.invoiceDate,
    this.checkIn,
    this.checkOut,
    this.paymentReceipt,
  });

  final String invoiceNumber;
  final DateTime? invoiceDate;
  final String reservationNumber;
  final String propertyName;
  final String propertyOwnerName;
  final DateTime? checkIn;
  final DateTime? checkOut;
  final int numberOfNights;
  final int numberOfGuests;
  final String paymentMethod;
  final String? paymentReceipt;
  final double pricePerNight;
  final double totalPaid;
  final String currency;
  final String reservationStatus;

  factory ReservationInvoiceModel.fromJson(Map<String, dynamic> json) {
    String str(String k) => json[k]?.toString() ?? '';
    final receipt = str('payment_receipt');
    return ReservationInvoiceModel(
      invoiceNumber: str('invoice_number'),
      invoiceDate: DateTime.tryParse(str('invoice_date')),
      reservationNumber: str('reservation_number'),
      propertyName: str('property_name'),
      propertyOwnerName: str('property_owner_name'),
      checkIn: DateTime.tryParse(str('check_in')),
      checkOut: DateTime.tryParse(str('check_out')),
      numberOfNights: int.tryParse(str('number_of_nights')) ?? 0,
      numberOfGuests: int.tryParse(str('number_of_guests')) ?? 1,
      paymentMethod: str('payment_method'),
      paymentReceipt: receipt.isEmpty ? null : receipt,
      pricePerNight: double.tryParse(str('price_per_night')) ?? 0,
      totalPaid: double.tryParse(str('total_paid')) ?? 0,
      currency: str('currency'),
      reservationStatus: str('reservation_status'),
    );
  }
}
