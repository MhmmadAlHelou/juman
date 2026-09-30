import 'dart:io';

import 'package:equatable/equatable.dart';
import 'package:ewan/core/core.dart';
import 'package:ewan/features/reservation/data/models/reservation_model.dart';
import 'package:ewan/features/reservation/data/reservation_repository.dart';

part 'upload_receipt_status.dart';

class UploadReceiptCubit extends Cubit<UploadReceiptState> {
  UploadReceiptCubit(
    this._reservationRepository, {
    required ReservationModel reservation,
  }) : super(UploadReceiptState(reservation: reservation)) {
    _startCountdown();
  }

  final ReservationRepository _reservationRepository;
  Timer? _timer;

  void _startCountdown() {
    final expiresAt = state.reservation.holdExpiresAt;
    if (expiresAt == null) return;
    _tick(expiresAt);
    _timer = Timer.periodic(
      const Duration(seconds: 1),
      (_) => _tick(expiresAt),
    );
  }

  void _tick(DateTime expiresAt) {
    final remaining = expiresAt.difference(DateTime.now());
    final clamped = remaining.isNegative ? Duration.zero : remaining;
    emit(state.copyWith(remaining: clamped));
    if (clamped == Duration.zero) _timer?.cancel();
  }

  void pickFile(File file) {
    emit(state.copyWith(selectedFile: file));
  }

  Future<void> uploadAndSubmit() async {
    if (!state.canUpload) return;
    emit(state.copyWith(status: UploadReceiptStatus.uploading));
    try {
      await _reservationRepository.uploadReceipt(
        state.reservation.id,
        state.selectedFile!,
      );
      emit(state.copyWith(status: UploadReceiptStatus.submitting));
      final updated = await _reservationRepository.submitReceipt(
        state.reservation.id,
      );
      _timer?.cancel();
      emit(
        state.copyWith(
          status: UploadReceiptStatus.success,
          reservation: updated,
        ),
      );
    } on BackendException catch (e) {
      emit(
        state.copyWith(
          status: UploadReceiptStatus.error,
          errorMessage: e.message,
        ),
      );
    }
  }

  @override
  Future<void> close() {
    _timer?.cancel();
    return super.close();
  }
}
