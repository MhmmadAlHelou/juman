import 'package:equatable/equatable.dart';
import 'package:ewan/core/core.dart';
import 'package:ewan/features/home/data/models/properties_model.dart';
import 'package:ewan/features/reservation/data/models/payment_method_model.dart';
import 'package:ewan/features/reservation/data/models/reservation_model.dart';
import 'package:ewan/features/reservation/data/payment_methods_repository.dart';
import 'package:ewan/features/reservation/data/reservation_repository.dart';

part 'reserve_state.dart';

class ReserveCubit extends Cubit<ReserveState> {
  ReserveCubit(
    this._reservationRepository,
    this._paymentMethodsRepository, {
    required PropertiesModel property,
    required DateTime checkIn,
    required DateTime checkOut,
    required int numberOfGuests,
  }) : super(
         ReserveState(
           property: property,
           checkIn: checkIn,
           checkOut: checkOut,
           numberOfGuests: numberOfGuests,
         ),
       ) {
    _init();
  }

  final ReservationRepository _reservationRepository;
  final PaymentMethodsRepository _paymentMethodsRepository;

  Future<void> _init() async {
    emit(state.copyWith(status: ReserveStatus.loading));
    try {
      final methods = await _paymentMethodsRepository.getPaymentMethods();
      emit(
        state.copyWith(
          status: ReserveStatus.loaded,
          paymentMethods: methods,
          selectedPaymentMethod: methods.isNotEmpty ? methods.first : null,
        ),
      );
      await _refreshPreview();
    } on BackendException catch (e) {
      emit(
        state.copyWith(
          status: ReserveStatus.error,
          errorMessage: e.displayMessage,
          errorCode: e.code,
        ),
      );
    }
  }

  Future<void> updateDates(DateTime checkIn, DateTime checkOut) async {
    emit(state.copyWith(checkIn: checkIn, checkOut: checkOut));
    await _refreshPreview();
  }

  Future<void> updateGuests(int numberOfGuests) async {
    emit(state.copyWith(numberOfGuests: numberOfGuests));
    await _refreshPreview();
  }

  void selectPaymentMethod(PaymentMethodModel method) {
    emit(state.copyWith(selectedPaymentMethod: method));
  }

  Future<void> _refreshPreview() async {
    emit(state.copyWith(status: ReserveStatus.previewLoading));
    try {
      final preview = await _reservationRepository.previewReservation(
        propertyId: state.property.id,
        checkIn: state.checkIn,
        checkOut: state.checkOut,
        numberOfGuests: state.numberOfGuests,
      );
      emit(state.copyWith(status: ReserveStatus.loaded, preview: preview));
    } on BackendException catch (e) {
      emit(
        state.copyWith(
          status: ReserveStatus.error,
          errorMessage: e.displayMessage,
          errorCode: e.code,
        ),
      );
    }
  }

  Future<void> submit() async {
    if (!state.canSubmit) return;
    emit(state.copyWith(status: ReserveStatus.submitting));
    try {
      final reservation = await _reservationRepository.createReservation(
        propertyId: state.property.id,
        checkIn: state.checkIn,
        checkOut: state.checkOut,
        numberOfGuests: state.numberOfGuests,
        paymentMethodId: state.selectedPaymentMethod!.id,
      );
      emit(
        state.copyWith(
          status: ReserveStatus.submitted,
          createdReservation: reservation,
        ),
      );
    } on BackendException catch (e) {
      emit(
        state.copyWith(
          status: ReserveStatus.error,
          errorMessage: e.displayMessage,
          errorCode: e.code,
        ),
      );
    }
  }
}
