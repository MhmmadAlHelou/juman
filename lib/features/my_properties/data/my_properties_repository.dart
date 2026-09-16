import 'package:ewan/core/core.dart';
import 'package:ewan/features/add_property/data/models/add_property_form_model.dart';
import 'package:ewan/features/home/data/models/properties_model.dart';
import 'package:ewan/features/my_properties/data/model/my_property_model.dart';
import 'package:ewan/features/my_properties/data/my_properties_result.dart';

abstract class MyPropertiesRepository {
  Future<MyPropertiesResult> fetchMyProperties();
  Future<void> deleteProperty(String id);
}

class MyPropertiesRepositoryImpl implements MyPropertiesRepository {
  MyPropertiesRepositoryImpl(this._dioClient);

  final DioClient _dioClient;

  @override
  Future<MyPropertiesResult> fetchMyProperties() async {
    final Response<dynamic> response = await _dioClient.sendRequest(
      RequestType.get,
      EndPoint.myProperties,
    );
    final Map<String, dynamic> data = response.data as Map<String, dynamic>;
    final List<dynamic> rawResults =
        data['data']['results'] as List<dynamic>? ?? <dynamic>[];

    final List<MyPropertyModel> items = rawResults.map((dynamic item) {
      final Map<String, dynamic> json = item as Map<String, dynamic>;
      final PropertyStatus status = statusFromString(json['status'] as String?);
      if (status == PropertyStatus.draft) {
        return MyPropertyModel.fromDraft(AddPropertyFormModel.fromJson(json));
      }
      return MyPropertyModel.fromProperty(PropertiesModel.fromJson(json));
    }).toList();

    return MyPropertiesResult(items: items);
  }

  @override
  Future<void> deleteProperty(String id) async {
    await _dioClient.sendRequest(
      RequestType.delete,
      '${EndPoint.properties}$id/',
    );
  }
}
