part of 'reserve_cubit.dart';

enum ReserveStatus {
  initial,
  loading,
  loaded,
  previewLoading,
  submitting,
  submitted,
  error,
}

class ReserveState extends Equatable {
  const ReserveState({
    this.status = ReserveStatus.initial,
    required this.property,
    required this.checkIn,
    required this.checkOut,
    required this.numberOfGuests,
    this.paymentMethods = const [],
    this.selectedPaymentMethod,
    this.preview,
    this.createdReservation,
    this.errorMessage,
    this.errorCode,
  });

  final ReserveStatus status;
  final PropertiesModel property;
  final DateTime checkIn;
  final DateTime checkOut;
  final int numberOfGuests;
  final List<PaymentMethodModel> paymentMethods;
  final PaymentMethodModel? selectedPaymentMethod;
  final ReservationModel? preview;
  final ReservationModel? createdReservation;
  final String? errorMessage;
  final String? errorCode;

  int get numberOfNights => checkOut.difference(checkIn).inDays;

  double get totalAmount =>
      preview?.totalAmount ?? property.pricePerNight * numberOfNights;

  bool get canSubmit =>
      selectedPaymentMethod != null &&
      numberOfNights > 0 &&
      status != ReserveStatus.submitting;

  ReserveState copyWith({
    ReserveStatus? status,
    DateTime? checkIn,
    DateTime? checkOut,
    int? numberOfGuests,
    List<PaymentMethodModel>? paymentMethods,
    PaymentMethodModel? selectedPaymentMethod,
    ReservationModel? preview,
    ReservationModel? createdReservation,
    String? errorMessage,
    String? errorCode,
  }) {
    return ReserveState(
      status: status ?? this.status,
      property: property,
      checkIn: checkIn ?? this.checkIn,
      checkOut: checkOut ?? this.checkOut,
      numberOfGuests: numberOfGuests ?? this.numberOfGuests,
      paymentMethods: paymentMethods ?? this.paymentMethods,
      selectedPaymentMethod:
          selectedPaymentMethod ?? this.selectedPaymentMethod,
      preview: preview ?? this.preview,
      createdReservation: createdReservation ?? this.createdReservation,
      errorMessage: errorMessage,
      errorCode: errorCode,
    );
  }

  @override
  List<Object?> get props => [
    status,
    property,
    checkIn,
    checkOut,
    numberOfGuests,
    paymentMethods,
    selectedPaymentMethod,
    preview,
    createdReservation,
    errorMessage,
    errorCode,
  ];
}
