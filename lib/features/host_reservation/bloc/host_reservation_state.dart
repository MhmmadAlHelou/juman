part of 'host_reservation_cubit.dart';

enum HostReservationsStatus { initial, loading, loaded, error }

class HostReservationsState extends Equatable {
  const HostReservationsState({
    this.status = HostReservationsStatus.initial,
    this.reservations = const [],
    this.selectedStatus,
    this.errorMessage,
  });

  final HostReservationsStatus status;
  final List<HostReservationModel> reservations;
  final String? selectedStatus; // null = All
  final String? errorMessage;

  List<String> get statuses {
    final seen = <String>[];
    for (final r in reservations) {
      if (r.reservationStatus.isNotEmpty &&
          !seen.contains(r.reservationStatus)) {
        seen.add(r.reservationStatus);
      }
    }
    return seen;
  }

  int countFor(String? s) => s == null
      ? reservations.length
      : reservations.where((r) => r.reservationStatus == s).length;

  List<HostReservationModel> get filtered => selectedStatus == null
      ? reservations
      : reservations
            .where((r) => r.reservationStatus == selectedStatus)
            .toList();

  HostReservationsState copyWith({
    HostReservationsStatus? status,
    List<HostReservationModel>? reservations,
    String? selectedStatus,
    bool clearSelectedStatus = false,
    String? errorMessage,
  }) {
    return HostReservationsState(
      status: status ?? this.status,
      reservations: reservations ?? this.reservations,
      selectedStatus: clearSelectedStatus
          ? null
          : (selectedStatus ?? this.selectedStatus),
      errorMessage: errorMessage,
    );
  }

  @override
  List<Object?> get props => [
    status,
    reservations,
    selectedStatus,
    errorMessage,
  ];
}
