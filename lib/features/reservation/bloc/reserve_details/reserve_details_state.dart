part of 'reserve_details_cubit.dart';

enum ReservationDetailsStatus { loading, loaded, error }

enum InvoiceLoadStatus { idle, loading, loaded, error }

class ReservationDetailsState extends Equatable {
  const ReservationDetailsState({
    this.status = ReservationDetailsStatus.loading,
    this.reservation,
    this.errorMessage,
    this.cancelling = false,
    this.invoiceStatus = InvoiceLoadStatus.idle,
    this.invoice,
  });

  final ReservationDetailsStatus status;
  final ReservationModel? reservation;
  final String? errorMessage;
  final bool cancelling;
  final InvoiceLoadStatus invoiceStatus;
  final ReservationInvoiceModel? invoice;

  ReservationDetailsState copyWith({
    ReservationDetailsStatus? status,
    ReservationModel? reservation,
    String? errorMessage,
    bool? cancelling,
    InvoiceLoadStatus? invoiceStatus,
    ReservationInvoiceModel? invoice,
  }) {
    return ReservationDetailsState(
      status: status ?? this.status,
      reservation: reservation ?? this.reservation,
      errorMessage: errorMessage,
      cancelling: cancelling ?? this.cancelling,
      invoiceStatus: invoiceStatus ?? this.invoiceStatus,
      invoice: invoice ?? this.invoice,
    );
  }

  @override
  List<Object?> get props => [
    status,
    reservation,
    errorMessage,
    cancelling,
    invoiceStatus,
    invoice,
  ];
}
