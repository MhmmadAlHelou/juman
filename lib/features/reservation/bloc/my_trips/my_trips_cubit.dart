import 'package:equatable/equatable.dart';
import 'package:ewan/core/core.dart';
import 'package:ewan/features/reservation/data/models/reservation_model.dart';
import 'package:ewan/features/reservation/data/reservation_repository.dart';

part 'my_trips_state.dart';

class MyTripsCubit extends Cubit<MyTripsState> {
  MyTripsCubit(this._repository) : super(const MyTripsState()) {
    load();
  }

  final ReservationRepository _repository;

  Future<void> load() async {
    emit(state.copyWith(status: MyTripsStatus.loading));
    try {
      final list = await _repository.getReservations();
      emit(state.copyWith(status: MyTripsStatus.loaded, reservations: list));
    } on BackendException catch (e) {
      emit(
        state.copyWith(
          status: MyTripsStatus.error,
          errorMessage: e.displayMessage,
        ),
      );
    }
  }

  Future<void> cancel(String reservationId) async {
    emit(state.copyWith(cancellingId: reservationId));
    try {
      await _repository.cancelReservation(reservationId);
      await load();
    } on BackendException catch (e) {
      emit(
        state.copyWith(
          status: MyTripsStatus.error,
          errorMessage: e.displayMessage,
          clearCancellingId: true,
        ),
      );
    }
  }
}
