import 'package:ewan/core/core.dart';
import 'package:ewan/features/add_property/data/models/add_property_form_model.dart';
import 'package:ewan/features/home/data/models/properties_model.dart';

abstract class AddPropertyRepository {
  Future<AddPropertyFormModel> createDraft();
  Future<AddPropertyFormModel?> getMyDraft();
  Future<AddPropertyFormModel> patchStep(
    String propertyId,
    Map<String, dynamic> fields,
  );
  Future<void> submitProperty(String propertyId);
}

class AddPropertyRepositoryImpl implements AddPropertyRepository {
  AddPropertyRepositoryImpl(this._dioClient);

  final DioClient _dioClient;

  @override
  Future<AddPropertyFormModel> createDraft() async {
    final Response<dynamic> response = await _dioClient.sendRequest(
      RequestType.post,
      EndPoint.properties,
      data: const <String, dynamic>{},
    );
    final Map<String, dynamic> body = response.data as Map<String, dynamic>;
    return AddPropertyFormModel.fromJson(body);
  }

  @override
  Future<AddPropertyFormModel> patchStep(
    String propertyId,
    Map<String, dynamic> fields,
  ) async {
    final Response<dynamic> response = await _dioClient.sendRequest(
      RequestType.patch,
      '${EndPoint.properties}$propertyId/',
      // data: fields,
      formData: FormData.fromMap(fields),
    );
    final Map<String, dynamic> body = response.data as Map<String, dynamic>;
    return AddPropertyFormModel.fromJson(body);
  }

  @override
  Future<void> submitProperty(String propertyId) async {
    await _dioClient.sendRequest(
      RequestType.put,
      '${EndPoint.properties}$propertyId/submit/',
    );
  }

  @override
  Future<AddPropertyFormModel?> getMyDraft() async {
    try {
      final Response<dynamic> response = await _dioClient.sendRequest(
        RequestType.get,
        EndPoint.myProperties,
      );
      final Map<String, dynamic> data = response.data as Map<String, dynamic>;
      final List<dynamic> results =
          data['results'] as List<dynamic>? ?? <dynamic>[];

      if (results.isEmpty) return null;

      final List<AddPropertyFormModel> allProperties = results
          .map(
            (dynamic e) =>
                AddPropertyFormModel.fromJson(e as Map<String, dynamic>),
          )
          .toList();

      // The API usually returns created at descending order (from newest to oldest),
      // But we verify this ourselves instead of relying on the server's order.
      final List<AddPropertyFormModel> drafts = allProperties
          .where((AddPropertyFormModel p) => p.status == PropertyStatus.draft)
          .toList();

      if (drafts.isEmpty) return null;

      // We only restore the most recent draft - we ignore the rest of the older drafts (experimental/abandoned).
      return drafts.first;
    } on BackendException catch (e) {
      if (e.statusCode == 404) {
        return null;
      }
      rethrow;
    }
  }
}
