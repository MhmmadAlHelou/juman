import 'dart:io';

import 'package:ewan/core/core.dart';
import 'package:ewan/features/reservation/data/models/reservation_invoice_model.dart';
import 'package:ewan/features/reservation/data/models/reservation_model.dart';
import 'package:ewan/features/reservation/data/models/submit_receipt_model.dart';
import 'package:ewan/features/reservation/data/models/unavailable_dates_model.dart';

abstract class ReservationRepository {
  Future<List<DateTime>> getUnavailableDates(String propertyId);

  Future<List<ReservationModel>> getReservations();

  Future<ReservationModel> previewReservation({
    required String propertyId,
    required DateTime checkIn,
    required DateTime checkOut,
    required int numberOfGuests,
  });

  Future<ReservationModel> createReservation({
    required String propertyId,
    required DateTime checkIn,
    required DateTime checkOut,
    required int numberOfGuests,
    required String paymentMethodId,
  });

  Future<void> uploadReceipt(String reservationId, File file);
  Future<ReceiptSubmissionResult> submitReceipt(String reservationId);
  Future<ReservationModel> getReservation(String id);
  Future<void> cancelReservation(String id);

  Future<ReservationInvoiceModel> getInvoice(String reservationId);
}

class ReservationRepositoryImpl implements ReservationRepository {
  final DioClient dioClient;

  ReservationRepositoryImpl(this.dioClient);

  @override
  Future<List<DateTime>> getUnavailableDates(String propertyId) async {
    try {
      final response = await dioClient.sendRequest(
        RequestType.get,
        '${EndPoint.reservations}$propertyId/unavailable-dates/',
      );
      final model = UnavailableDatesModel.fromJson(
        response.data['data'] as Map<String, dynamic>,
      );
      return model.unavailableDates;
    } on DioException catch (e) {
      throw BackendException(dioException: e);
    }
  }

  @override
  Future<List<ReservationModel>> getReservations() async {
    try {
      final response = await dioClient.sendRequest(
        RequestType.get,
        EndPoint.reservations,
      );
      final dynamic raw = response.data;
      final dynamic list = raw is Map<String, dynamic>
          ? (raw['data'] ?? raw['results'])
          : raw;
      return (list as List<dynamic>)
          .map((e) => ReservationModel.fromJson(e as Map<String, dynamic>))
          .toList();
    } on DioException catch (e) {
      throw BackendException(dioException: e);
    }
  }

  @override
  Future<ReservationModel> previewReservation({
    required String propertyId,
    required DateTime checkIn,
    required DateTime checkOut,
    required int numberOfGuests,
  }) async {
    try {
      final response = await dioClient.sendRequest(
        RequestType.post,
        '${EndPoint.reservations}preview/',
        data: {
          'property': propertyId,
          'check_in': _formatDate(checkIn),
          'check_out': _formatDate(checkOut),
          'number_of_guests': numberOfGuests,
        },
      );
      return ReservationModel.fromJson(_unwrap(response.data));
    } on DioException catch (e) {
      throw BackendException(dioException: e);
    }
  }

  @override
  Future<ReservationModel> createReservation({
    required String propertyId,
    required DateTime checkIn,
    required DateTime checkOut,
    required int numberOfGuests,
    required String paymentMethodId,
  }) async {
    try {
      final formData = FormData.fromMap({
        'property': propertyId,
        'check_in': _formatDate(checkIn),
        'check_out': _formatDate(checkOut),
        'number_of_guests': numberOfGuests,
        'payment_method': paymentMethodId,
      });
      final response = await dioClient.sendRequest(
        RequestType.post,
        EndPoint.reservations,
        formData: formData,
      );
      final body = response.data as Map<String, dynamic>;
      return ReservationModel.fromJson(_unwrap(body));
    } on DioException catch (e) {
      throw BackendException(dioException: e);
    }
  }

  @override
  Future<void> uploadReceipt(String reservationId, File file) async {
    try {
      final fileName = file.path.split('/').last;
      final formData = FormData.fromMap({
        'receipt_image': await MultipartFile.fromFile(
          file.path,
          filename: fileName,
        ),
      });
      await dioClient.sendRequest(
        RequestType.post,
        '${EndPoint.reservations}$reservationId/upload-receipt/',
        formData: formData,
      );
    } on DioException catch (e) {
      throw BackendException(dioException: e);
    }
  }

  @override
  Future<ReceiptSubmissionResult> submitReceipt(String reservationId) async {
    try {
      final response = await dioClient.sendRequest(
        RequestType.post,
        '${EndPoint.reservations}$reservationId/submit-receipt/',
      );
      final body = response.data as Map<String, dynamic>;
      return ReceiptSubmissionResult.fromJson(_unwrap(body));
    } on DioException catch (e) {
      throw BackendException(dioException: e);
    }
  }

  @override
  Future<ReservationModel> getReservation(String id) async {
    try {
      final response = await dioClient.sendRequest(
        RequestType.get,
        '${EndPoint.reservations}$id/',
      );
      return ReservationModel.fromJson(_unwrap(response.data));
    } on DioException catch (e) {
      throw BackendException(dioException: e);
    }
  }

  @override
  Future<void> cancelReservation(String id) async {
    try {
      await dioClient.sendRequest(
        RequestType.post,
        '${EndPoint.reservations}$id/cancel/',
      );
    } on DioException catch (e) {
      throw BackendException(dioException: e);
    }
  }

  @override
  Future<ReservationInvoiceModel> getInvoice(String reservationId) async {
    try {
      final response = await dioClient.sendRequest(
        RequestType.get,
        '${EndPoint.invoiceByReservation}$reservationId/',
      );
      final body = response.data as Map<String, dynamic>;
      return ReservationInvoiceModel.fromJson(_unwrap(body));
    } on DioException catch (e) {
      throw BackendException(dioException: e);
    }
  }

  Map<String, dynamic> _unwrap(dynamic raw) {
    final map = raw as Map<String, dynamic>;
    final data = map['data'];
    return data is Map<String, dynamic> ? data : map;
  }

  String _formatDate(DateTime date) =>
      '${date.year.toString().padLeft(4, '0')}-'
      '${date.month.toString().padLeft(2, '0')}-'
      '${date.day.toString().padLeft(2, '0')}';
}
