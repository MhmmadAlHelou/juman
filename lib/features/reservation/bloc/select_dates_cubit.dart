import 'package:equatable/equatable.dart';
import 'package:ewan/core/core.dart';
import 'package:ewan/features/reservation/data/reservation_repository.dart';

part 'select_dates_state.dart';

class SelectDatesCubit extends Cubit<SelectDatesState> {
  SelectDatesCubit(
    this._reservationRepository, {
    required this.propertyId,
    required this.maxGuests,
    DateTime? initialCheckIn,
    DateTime? initialCheckOut,
    int? initialGuests,
  }) : super(
         SelectDatesState(
           checkIn: initialCheckIn,
           checkOut: initialCheckOut,
           numberOfGuests: initialGuests ?? 1,
         ),
       );

  final ReservationRepository _reservationRepository;
  final String propertyId;
  final int maxGuests;

  Future<void> loadUnavailableDates() async {
    emit(state.copyWith(status: SelectDatesStatus.loading));
    try {
      final dates = await _reservationRepository.getUnavailableDates(
        propertyId,
      );
      emit(
        state.copyWith(
          status: SelectDatesStatus.loaded,
          unavailableDates: dates,
        ),
      );
    } on BackendException catch (e) {
      emit(
        state.copyWith(
          status: SelectDatesStatus.error,
          errorMessage: e.message,
        ),
      );
    }
  }

  void incrementGuests() {
    if (state.numberOfGuests < maxGuests) {
      emit(state.copyWith(numberOfGuests: state.numberOfGuests + 1));
    }
  }

  void decrementGuests() {
    if (state.numberOfGuests > 1) {
      emit(state.copyWith(numberOfGuests: state.numberOfGuests - 1));
    }
  }

  void selectDate(DateTime date) {
    // If there is no check-in, or both are predefined → we start a new range
    if (state.checkIn == null ||
        (state.checkIn != null && state.checkOut != null)) {
      emit(state.copyWith(checkIn: date, clearCheckOut: true));
      return;
    }

    // It only has check-in, and the user chooses check-out.
    if (date.isBefore(state.checkIn!)) {
      // If he chooses a date before check-in, we consider it a new check-in.
      emit(state.copyWith(checkIn: date, clearCheckOut: true));
      return;
    }

    if (_rangeContainsUnavailableDate(state.checkIn!, date)) {
      emit(
        state.copyWith(
          status: SelectDatesStatus.error,
          errorMessage: 'The selected period contains unavailable dates',
        ),
      );
      return;
    }

    emit(state.copyWith(checkOut: date, status: SelectDatesStatus.loaded));
  }

  bool _rangeContainsUnavailableDate(DateTime start, DateTime end) {
    for (final unavailable in state.unavailableDates) {
      if (unavailable.isAfter(start) && unavailable.isBefore(end)) {
        return true;
      }
    }
    return false;
  }

  void clearSelection() {
    emit(
      state.copyWith(
        clearCheckIn: true,
        clearCheckOut: true,
        numberOfGuests: 1,
      ),
    );
  }
}
