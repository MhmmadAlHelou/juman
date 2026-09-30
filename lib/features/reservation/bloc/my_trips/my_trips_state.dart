part of 'my_trips_cubit.dart';

enum MyTripsStatus { initial, loading, loaded, error }

class MyTripsState extends Equatable {
  const MyTripsState({
    this.status = MyTripsStatus.initial,
    this.reservations = const [],
    this.cancellingId,
    this.errorMessage,
  });

  final MyTripsStatus status;
  final List<ReservationModel> reservations;
  final String? cancellingId;
  final String? errorMessage;

  List<ReservationModel> byTab(TripTab tab) =>
      reservations.where((r) => r.tripTab == tab).toList();

  MyTripsState copyWith({
    MyTripsStatus? status,
    List<ReservationModel>? reservations,
    String? cancellingId,
    bool clearCancellingId = false,
    String? errorMessage,
  }) {
    return MyTripsState(
      status: status ?? this.status,
      reservations: reservations ?? this.reservations,
      cancellingId: clearCancellingId
          ? null
          : (cancellingId ?? this.cancellingId),
      errorMessage: errorMessage,
    );
  }

  @override
  List<Object?> get props => [status, reservations, cancellingId, errorMessage];
}
