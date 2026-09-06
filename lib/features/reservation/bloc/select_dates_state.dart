part of 'select_dates_cubit.dart';

enum SelectDatesStatus { initial, loading, loaded, error }

class SelectDatesState extends Equatable {
  const SelectDatesState({
    this.status = SelectDatesStatus.initial,
    this.unavailableDates = const [],
    this.checkIn,
    this.checkOut,
    this.numberOfGuests = 1,
    this.errorMessage,
  });

  final SelectDatesStatus status;
  final List<DateTime> unavailableDates;
  final DateTime? checkIn;
  final DateTime? checkOut;
  final int numberOfGuests;
  final String? errorMessage;

  int get numberOfNights {
    if (checkIn == null || checkOut == null) return 0;
    return checkOut!.difference(checkIn!).inDays;
  }

  bool get hasValidRange =>
      checkIn != null && checkOut != null && numberOfNights > 0;

  bool isDateUnavailable(DateTime date) {
    return unavailableDates.any(
      (d) => d.year == date.year && d.month == date.month && d.day == date.day,
    );
  }

  SelectDatesState copyWith({
    SelectDatesStatus? status,
    List<DateTime>? unavailableDates,
    DateTime? checkIn,
    DateTime? checkOut,
    int? numberOfGuests,
    String? errorMessage,
    bool clearCheckIn = false,
    bool clearCheckOut = false,
  }) {
    return SelectDatesState(
      status: status ?? this.status,
      unavailableDates: unavailableDates ?? this.unavailableDates,
      checkIn: clearCheckIn ? null : (checkIn ?? this.checkIn),
      checkOut: clearCheckOut ? null : (checkOut ?? this.checkOut),
      numberOfGuests: numberOfGuests ?? this.numberOfGuests,
      errorMessage: errorMessage,
    );
  }

  @override
  List<Object?> get props => [
    status,
    unavailableDates,
    checkIn,
    checkOut,
    numberOfGuests,
    errorMessage,
  ];
}
