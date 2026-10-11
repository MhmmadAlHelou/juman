import 'package:equatable/equatable.dart';
import 'package:ewan/core/core.dart';
import 'package:ewan/features/host_reservation/data/host_reservation_model.dart';
import 'package:ewan/features/host_reservation/data/host_reservation_repository.dart';

part 'host_reservation_state.dart';

class HostReservationsCubit extends Cubit<HostReservationsState> {
  HostReservationsCubit(this._repository)
    : super(const HostReservationsState()) {
    load();
  }

  final HostReservationsRepository _repository;

  Future<void> load() async {
    emit(state.copyWith(status: HostReservationsStatus.loading));
    try {
      final list = await _repository.getHostReservations();
      emit(
        state.copyWith(
          status: HostReservationsStatus.loaded,
          reservations: list,
        ),
      );
    } on BackendException catch (e) {
      emit(
        state.copyWith(
          status: HostReservationsStatus.error,
          errorMessage: e.displayMessage,
        ),
      );
    }
  }

  void selectFilter(String? status) => emit(
    state.copyWith(selectedStatus: status, clearSelectedStatus: status == null),
  );

  //A detail failure doesn't switch the list to an error state, it just displays a message.
  Future<HostReservationModel?> fetchDetail(String id) async {
    try {
      return await _repository.getHostReservation(id);
    } on BackendException catch (e) {
      emit(state.copyWith(errorMessage: e.displayMessage));
      return null;
    }
  }
}
