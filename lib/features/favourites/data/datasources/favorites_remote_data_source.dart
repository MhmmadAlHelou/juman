import 'package:ewan/core/core.dart';
import 'package:ewan/features/home/data/models/properties_model.dart';

abstract class FavoritesRemoteDataSource {
  Future<List<PropertiesModel>> getFavorites();
  Future<void> addFavorite(String propertyId);
  Future<void> removeFavorite(String propertyId);
  Future<void> syncFavorites(List<String> propertyIds);
}

class FavoritesRemoteDataSourceImpl implements FavoritesRemoteDataSource {
  FavoritesRemoteDataSourceImpl(this._dioClient);

  final DioClient _dioClient;

  @override
  Future<List<PropertiesModel>> getFavorites() async {
    final response = await _dioClient.sendRequest(
      RequestType.get,
      EndPoint.favorites,
    );
    // Envelope confirmed via Swagger: {success, data: {results: [...]}}
    final results = response.data['data']['results'] as List;
    return results.map((e) => PropertiesModel.fromJson(e['property'])).toList();
  }

  @override
  Future<void> addFavorite(String propertyId) => _dioClient.sendRequest(
    RequestType.post,
    EndPoint.favorites,
    data: {'property_id': propertyId},
  );

  @override
  Future<void> removeFavorite(String propertyId) => _dioClient.sendRequest(
    RequestType.delete,
    '${EndPoint.favorites}$propertyId/',
  );

  @override
  Future<void> syncFavorites(List<String> propertyIds) =>
      _dioClient.sendRequest(
        RequestType.post,
        '${EndPoint.favorites}sync/',
        data: {'property_ids': propertyIds},
      );
}
