import 'package:ewan/core/core.dart';
import 'package:ewan/features/add_property/data/models/add_property_form_model.dart';
import 'package:ewan/features/home/data/models/properties_model.dart';

abstract class AddPropertyRepository {
  Future<AddPropertyFormModel> createDraft();
  Future<AddPropertyFormModel> patchStep(
    String propertyId,
    Map<String, dynamic> fields,
  );
  Future<AddPropertyFormModel> submitProperty(String propertyId);
  Future<AddPropertyFormModel?> getMyDraft();
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
      data: fields,
    );
    final Map<String, dynamic> body = response.data as Map<String, dynamic>;
    return AddPropertyFormModel.fromJson(body);
  }

  @override
  Future<AddPropertyFormModel> submitProperty(String propertyId) async {
    final Response<dynamic> response = await _dioClient.sendRequest(
      RequestType.post,
      '${EndPoint.properties}$propertyId/submit/',
    );
    final Map<String, dynamic> body = response.data as Map<String, dynamic>;
    return AddPropertyFormModel.fromJson(body);
  }

  @override
  Future<AddPropertyFormModel?> getMyDraft() async {
    try {
      final Response<dynamic> response = await _dioClient.sendRequest(
        RequestType.get,
        EndPoint.myProperties,
      );
      final Map<String, dynamic> data = response.data as Map<String, dynamic>;
      final AddPropertyFormModel model = AddPropertyFormModel.fromJson(data);
      // احتياط: لو رجعت عقار مو DRAFT (مثلاً APPROVED)، تجاهله - مو draft نستأنفه
      return model.status == PropertyStatus.draft ? model : null;
    } on BackendException catch (e) {
      if (e.statusCode == 404) {
        return null;
      }
      rethrow;
    }
  }
}
