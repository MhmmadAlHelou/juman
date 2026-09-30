part of 'reserve_details_cubit.dart';

enum ReservationDetailsStatus { loading, loaded, error }

class ReservationDetailsState extends Equatable {
  const ReservationDetailsState({
    this.status = ReservationDetailsStatus.loading,
    this.reservation,
    this.errorMessage,
  });

  final ReservationDetailsStatus status;
  final ReservationModel? reservation;
  final String? errorMessage;

  ReservationDetailsState copyWith({
    ReservationDetailsStatus? status,
    ReservationModel? reservation,
    String? errorMessage,
  }) {
    return ReservationDetailsState(
      status: status ?? this.status,
      reservation: reservation ?? this.reservation,
      errorMessage: errorMessage,
    );
  }

  @override
  List<Object?> get props => [status, reservation, errorMessage];
}
