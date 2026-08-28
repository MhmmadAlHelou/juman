import 'package:ewan/core/core.dart';
import 'package:ewan/features/home/data/models/properties_model.dart';

abstract class LocationsRepository {
  Future<List<PropertyCategoryModel>> getCategories();
  Future<List<PlaceTypeModel>> getPlaceTypes();
  Future<List<CityModel>> getCities();
  Future<List<AmenityModel>> getAmenityItems();
}

class LocationsRepositoryImpl implements LocationsRepository {
  LocationsRepositoryImpl(this._dioClient);

  final DioClient _dioClient;

  Future<List<T>> _getList<T>(
    String path,
    T Function(Map<String, dynamic>) fromJson,
  ) async {
    final Response<dynamic> response = await _dioClient.sendRequest(
      RequestType.get,
      path,
    );

    final List<dynamic> data = response.data as List<dynamic>;
    return data
        .map((dynamic e) => fromJson(e as Map<String, dynamic>))
        .toList();
  }

  @override
  Future<List<PropertyCategoryModel>> getCategories() =>
      _getList(EndPoint.categories, PropertyCategoryModel.fromJson);

  @override
  Future<List<PlaceTypeModel>> getPlaceTypes() =>
      _getList(EndPoint.placeTypes, PlaceTypeModel.fromJson);

  @override
  Future<List<CityModel>> getCities() =>
      _getList(EndPoint.cities, CityModel.fromJson);

  @override
  Future<List<AmenityModel>> getAmenityItems() =>
      _getList(EndPoint.amenities, AmenityModel.fromJson);
}
