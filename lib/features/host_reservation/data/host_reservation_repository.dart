import 'package:ewan/core/core.dart';
import 'package:ewan/features/host_reservation/data/host_reservation_model.dart';

abstract class HostReservationsRepository {
  Future<List<HostReservationModel>> getHostReservations();
  Future<HostReservationModel> getHostReservation(String id);
}

class HostReservationsRepositoryImpl implements HostReservationsRepository {
  HostReservationsRepositoryImpl(this.dioClient);
  final DioClient dioClient;

  dynamic _data(dynamic raw) =>
      raw is Map<String, dynamic> && raw.containsKey('data')
      ? raw['data']
      : raw;

  @override
  Future<List<HostReservationModel>> getHostReservations() async {
    try {
      final response = await dioClient.sendRequest(
        RequestType.get,
        EndPoint.hostReservations,
      );
      final data = _data(response.data);
      final list = data is List<dynamic> ? data : <dynamic>[];
      return list
          .map((e) => HostReservationModel.fromJson(e as Map<String, dynamic>))
          .toList();
    } on DioException catch (e) {
      throw BackendException(dioException: e);
    }
  }

  @override
  Future<HostReservationModel> getHostReservation(String id) async {
    try {
      final response = await dioClient.sendRequest(
        RequestType.get,
        '${EndPoint.hostReservations}$id/',
      );
      return HostReservationModel.fromJson(
        _data(response.data) as Map<String, dynamic>,
      );
    } on DioException catch (e) {
      throw BackendException(dioException: e);
    }
  }
}
