import 'package:ewan/core/core.dart';
import 'package:ewan/features/reservation/data/models/unavailable_dates_model.dart';

abstract class ReservationRepository {
  Future<List<DateTime>> getUnavailableDates(String propertyId);
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
}

class MockReservationRepository implements ReservationRepository {
  @override
  Future<List<DateTime>> getUnavailableDates(String propertyId) async {
    await Future.delayed(const Duration(milliseconds: 500));
    final now = DateTime.now();
    return [
      now.add(const Duration(days: 5)),
      now.add(const Duration(days: 6)),
      now.add(const Duration(days: 12)),
    ];
  }
}
