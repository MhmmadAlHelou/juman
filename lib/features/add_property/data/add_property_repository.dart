import 'package:ewan/core/core.dart';
import 'package:ewan/features/add_property/data/models/add_property_form_model.dart';
import 'package:ewan/features/home/data/models/properties_model.dart';

abstract class AddPropertyRepository {
  Future<AddPropertyFormModel> createDraft();
  Future<AddPropertyFormModel?> getMyDraft();
  Future<AddPropertyFormModel> getDraftById(String id);
  // Future<AddPropertyFormModel> getPropertyById(String propertyId);
  Future<AddPropertyFormModel> patchStep(
    String propertyId,
    Map<String, dynamic> fields,
  );

  Future<void> submitProperty(String propertyId);
  Future<void> revertToDraft(String propertyId);
  Future<void> revertToPending(String propertyId);

  Future<void> deleteImage(String imageId);
  Future<void> deleteDocument(String documentId);
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
    // final Map<String, dynamic> body = response.data as Map<String, dynamic>;
    // // Logger().i(body);
    // final Map<String, dynamic> propertyJson =
    //     body['data'] is Map<String, dynamic>
    //     ? body['data'] as Map<String, dynamic>
    //     : body;
    // return AddPropertyFormModel.fromJson(propertyJson);
    return AddPropertyFormModel.fromJson(
      _unwrap(response.data as Map<String, dynamic>),
    );
  }

  @override
  Future<AddPropertyFormModel> patchStep(
    String propertyId,
    Map<String, dynamic> fields,
  ) async {
    final Response<dynamic> response = await _dioClient.sendRequest(
      RequestType.patch,
      '${EndPoint.properties}$propertyId/',
      formData: FormData.fromMap(fields),
    );
    return AddPropertyFormModel.fromJson(
      _unwrap(response.data as Map<String, dynamic>),
    );
  }

  @override
  Future<void> submitProperty(String propertyId) async {
    await _dioClient.sendRequest(
      RequestType.put,
      '${EndPoint.properties}$propertyId/submit/',
    );
  }

  @override
  Future<void> revertToDraft(String propertyId) async {
    await _dioClient.sendRequest(
      RequestType.put,
      '${EndPoint.properties}$propertyId/revert-to-draft/',
    );
  }

  @override
  Future<void> revertToPending(String propertyId) async {
    await _dioClient.sendRequest(
      RequestType.put,
      '${EndPoint.properties}$propertyId/revert-to-pending/',
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
      final Map<String, dynamic> propertyJson =
          data['data'] is Map<String, dynamic>
          ? data['data'] as Map<String, dynamic>
          : data;
      final List<dynamic> results =
          propertyJson['results'] as List<dynamic>? ?? <dynamic>[];

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

  @override
  Future<AddPropertyFormModel> getDraftById(String id) async {
    final Response<dynamic> response = await _dioClient.sendRequest(
      RequestType.get,
      '${EndPoint.properties}$id/',
    );
    return AddPropertyFormModel.fromJson(
      _unwrap(response.data as Map<String, dynamic>),
    );
  }

  // @override
  // Future<AddPropertyFormModel> getPropertyById(String propertyId) async {
  //   final Response<dynamic> response = await _dioClient.sendRequest(
  //     RequestType.get,
  //     '${EndPoint.properties}$propertyId/',
  //   );
  //   return AddPropertyFormModel.fromJson(
  //     _unwrap(response.data as Map<String, dynamic>),
  //   );
  // }

  @override
  Future<void> deleteImage(String imageId) async {
    await _dioClient.sendRequest(
      RequestType.delete,
      '${EndPoint.properties}images/$imageId/',
    );
  }

  @override
  Future<void> deleteDocument(String documentId) async {
    await _dioClient.sendRequest(
      RequestType.delete,
      '${EndPoint.properties}documents/$documentId/',
    );
  }

  Map<String, dynamic> _unwrap(Map<String, dynamic> body) {
    return body['data'] is Map<String, dynamic>
        ? body['data'] as Map<String, dynamic>
        : body;
  }
}
