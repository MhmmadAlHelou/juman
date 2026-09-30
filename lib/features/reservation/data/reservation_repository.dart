import 'dart:io';

import 'package:ewan/core/core.dart';
import 'package:ewan/features/reservation/data/models/reservation_model.dart';
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

  Future<ReservationModel> uploadReceipt(String reservationId, File file);
  Future<ReservationModel> submitReceipt(String reservationId);
  Future<ReservationModel> getReservation(String id);
  Future<void> cancelReservation(String id);
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
      return ReservationModel.fromJson(
        response.data['data'] as Map<String, dynamic>,
      );
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
      return ReservationModel.fromJson(body['data'] as Map<String, dynamic>);
    } on DioException catch (e) {
      throw BackendException(dioException: e);
    }
  }

  @override
  Future<ReservationModel> uploadReceipt(
    String reservationId,
    File file,
  ) async {
    final String fileName = file.path.split('/').last;
    try {
      final FormData formData = FormData.fromMap(<String, dynamic>{
        'receipt_image': await MultipartFile.fromFile(
          file.path,
          filename: fileName,
        ),
      });

      final Response<dynamic> response = await dioClient.sendRequest(
        RequestType.post,
        '${EndPoint.reservations}$reservationId/upload-receipt/',
        formData: formData,
      );

      final Map<String, dynamic> body = response.data as Map<String, dynamic>;
      final Map<String, dynamic> data = body['data'] as Map<String, dynamic>;
      return ReservationModel.fromJson(data);
    } on DioException catch (e) {
      throw BackendException(dioException: e);
    }
  }

  @override
  Future<ReservationModel> submitReceipt(String reservationId) async {
    try {
      final response = await dioClient.sendRequest(
        RequestType.post,
        '${EndPoint.reservations}$reservationId/submit-receipt/',
      );
      return ReservationModel.fromJson(
        response.data['data'] as Map<String, dynamic>,
      );
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
      return ReservationModel.fromJson(
        response.data['data'] as Map<String, dynamic>,
      );
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

  String _formatDate(DateTime date) =>
      '${date.year.toString().padLeft(4, '0')}-'
      '${date.month.toString().padLeft(2, '0')}-'
      '${date.day.toString().padLeft(2, '0')}';
}

// class MockReservationRepository implements ReservationRepository {
//   MockReservationRepository({required this.fakeProperty});

//   final PropertiesModel fakeProperty;
//   final List<DateTime> _unavailable = [];

//   @override
//   Future<List<DateTime>> getUnavailableDates(String propertyId) async {
//     await Future.delayed(const Duration(milliseconds: 500));
//     final now = DateTime.now();
//     return [
//       now.add(const Duration(days: 5)),
//       now.add(const Duration(days: 6)),
//       now.add(const Duration(days: 12)),
//     ];
//   }

//   ReservationModel _fakeReservation({
//     required DateTime checkIn,
//     required DateTime checkOut,
//     required int numberOfGuests,
//     String status = 'hold',
//     String? paymentMethodId,
//   }) {
//     final nights = checkOut.difference(checkIn).inDays;
//     final total = fakeProperty.pricePerNight * nights;
//     return ReservationModel(
//       id: 'mock-${DateTime.now().millisecondsSinceEpoch}',
//       property: fakeProperty,
//       numberOfNights: nights,
//       holdExpiresAt: DateTime.now().add(const Duration(hours: 24)),
//       remainingHoldSeconds: const Duration(hours: 24).inSeconds,
//       isHoldExpired: false,
//       paymentStatus: 'awaiting_receipt',
//       reservationType: 'standard',
//       createdAt: DateTime.now(),
//       updatedAt: DateTime.now(),
//       checkIn: checkIn,
//       checkOut: checkOut,
//       numberOfGuests: numberOfGuests,
//       pricePerNight: fakeProperty.pricePerNight,
//       ownerAmount: total * 0.9,
//       adminAmount: total * 0.1,
//       totalAmount: total,
//       status: ReservationStatus.fromJson(status),
//       userId: 'mock-user',
//       currencyId: 'SYP',
//       paymentMethodId: paymentMethodId ?? '',
//     );
//   }

//   @override
//   Future<ReservationModel> previewReservation({
//     required String propertyId,
//     required DateTime checkIn,
//     required DateTime checkOut,
//     required int numberOfGuests,
//   }) async {
//     await Future.delayed(const Duration(milliseconds: 300));
//     return _fakeReservation(
//       checkIn: checkIn,
//       checkOut: checkOut,
//       numberOfGuests: numberOfGuests,
//     );
//   }

//   @override
//   Future<ReservationModel> createReservation({
//     required String propertyId,
//     required DateTime checkIn,
//     required DateTime checkOut,
//     required int numberOfGuests,
//     required String paymentMethodId,
//   }) async {
//     await Future.delayed(const Duration(milliseconds: 600));
//     return _fakeReservation(
//       checkIn: checkIn,
//       checkOut: checkOut,
//       numberOfGuests: numberOfGuests,
//       paymentMethodId: paymentMethodId,
//     );
//   }

//   @override
//   Future<ReservationModel> uploadReceipt(
//     String reservationId,
//     File file,
//   ) async {
//     await Future.delayed(const Duration(milliseconds: 800));
//     return _fakeReservation(
//       checkIn: DateTime.now(),
//       checkOut: DateTime.now().add(const Duration(days: 3)),
//       numberOfGuests: 2,
//       status: 'hold_approval',
//     );
//   }

//   @override
//   Future<ReservationModel> submitReceipt(String reservationId) async {
//     await Future.delayed(const Duration(milliseconds: 400));
//     return _fakeReservation(
//       checkIn: DateTime.now(),
//       checkOut: DateTime.now().add(const Duration(days: 3)),
//       numberOfGuests: 2,
//       status: 'hold_approval',
//     );
//   }

//   @override
//   Future<ReservationModel> getReservation(String id) async {
//     await Future.delayed(const Duration(milliseconds: 300));
//     return _fakeReservation(
//       checkIn: DateTime.now(),
//       checkOut: DateTime.now().add(const Duration(days: 3)),
//       numberOfGuests: 2,
//       status: 'hold_approval',
//     );
//   }

//   @override
//   Future<void> cancelReservation(String id) async {
//     await Future.delayed(const Duration(milliseconds: 300));
//   }
// }
