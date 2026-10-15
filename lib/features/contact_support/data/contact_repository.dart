import 'package:ewan/core/core.dart';
import 'package:ewan/features/contact_support/data/contact_option_model.dart';

abstract class ContactRepository {
  Future<List<ContactOptionModel>> getContactOptions();
}

class ContactRepositoryImpl implements ContactRepository {
  final DioClient _client;
  ContactRepositoryImpl(this._client);

  @override
  Future<List<ContactOptionModel>> getContactOptions() async {
    try {
      final response = await _client.sendRequest(
        RequestType.get,
        EndPoint.contactUs,
      );
      final body = response.data as Map<String, dynamic>; // envelope
      final options = (body['data']?['options'] as List? ?? []);
      return options
          .map((e) => ContactOptionModel.fromJson(e as Map<String, dynamic>))
          .toList();
    } on DioException catch (e) {
      throw BackendException(dioException: e);
    }
  }
}
