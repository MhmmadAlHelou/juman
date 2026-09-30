import 'package:equatable/equatable.dart';
import 'package:ewan/core/core.dart';
import 'package:ewan/features/reservation/data/models/reservation_model.dart';
import 'package:ewan/features/reservation/data/reservation_repository.dart';

part 'reserve_details_state.dart';

class ReservationDetailsCubit extends Cubit<ReservationDetailsState> {
  ReservationDetailsCubit(this._repository, {required String reservationId})
    : super(const ReservationDetailsState()) {
    load(reservationId);
  }

  final ReservationRepository _repository;

  Future<void> load(String id) async {
    emit(state.copyWith(status: ReservationDetailsStatus.loading));
    try {
      final reservation = await _repository.getReservation(id);
      emit(
        state.copyWith(
          status: ReservationDetailsStatus.loaded,
          reservation: reservation,
        ),
      );
    } on BackendException catch (e) {
      emit(
        state.copyWith(
          status: ReservationDetailsStatus.error,
          errorMessage: e.displayMessage,
        ),
      );
    }
  }
}
