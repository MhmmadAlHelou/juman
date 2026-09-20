import 'package:ewan/core/core.dart';
import 'package:ewan/features/home/data/models/properties_model.dart';

abstract class PropertiesRepository {
  Future<List<PropertiesModel>> getAllProperties({
    Map<String, dynamic>? filters,
  });

  Future<PaginatedResult<PropertiesModel>> getProperties({
    int page = 1,
    int pageSize = 10,
    Map<String, dynamic>? filters,
  });

  // Future<PaginatedResult<PropertiesModel>> getMyProperties();
  Future<void> deleteProperty(String id);
}

class PropertiesRepositoryImpl implements PropertiesRepository {
  PropertiesRepositoryImpl(this._dioClient);

  final DioClient _dioClient;

  // Bigger page size when we're paging internally for the map —
  // fewer round trips for the same total data.
  static const int _mapFetchPageSize = 50;

  @override
  Future<PaginatedResult<PropertiesModel>> getProperties({
    int page = 1,
    int pageSize = 10,
    Map<String, dynamic>? filters,
  }) async {
    final Response<dynamic> response = await _dioClient.sendRequest(
      RequestType.get,
      EndPoint.properties,
      queryParameters: <String, dynamic>{
        'page': page,
        'page_size': pageSize,
        ...?filters,
      },
    );

    final Map<String, dynamic> data = response.data as Map<String, dynamic>;
    final List<dynamic> rawResults =
        data['results'] as List<dynamic>? ?? <dynamic>[];

    final List<PropertiesModel> results = rawResults
        .map((dynamic e) => PropertiesModel.fromJson(e as Map<String, dynamic>))
        .where((PropertiesModel p) => p.status == PropertyStatus.approved)
        .toList();

    return PaginatedResult<PropertiesModel>(
      count: data['count'] as int? ?? results.length,
      hasNext: data['next'] != null,
      results: results,
    );
  }

  @override
  Future<List<PropertiesModel>> getAllProperties({
    Map<String, dynamic>? filters,
  }) async {
    final List<PropertiesModel> all = <PropertiesModel>[];
    int page = 1;

    while (true) {
      final PaginatedResult<PropertiesModel> pageResult = await getProperties(
        page: page,
        pageSize: _mapFetchPageSize,
        filters: filters,
      );
      all.addAll(pageResult.results);

      if (!pageResult.hasNext) break;
      page++;
    }

    return all;
  }

  // @override
  // Future<PaginatedResult<PropertiesModel>> getMyProperties() async {
  //   final Response<dynamic> response = await _dioClient.sendRequest(
  //     RequestType.get,
  //     '${EndPoint.properties}my-properties/',
  //   );

  //   final Map<String, dynamic> data = response.data as Map<String, dynamic>;
  //   final List<dynamic> rawResults =
  //       data['results'] as List<dynamic>? ?? <dynamic>[];

  //   final List<PropertiesModel> results = rawResults
  //       .map((dynamic e) => PropertiesModel.fromJson(e as Map<String, dynamic>))
  //       .toList();

  //   return PaginatedResult<PropertiesModel>(
  //     count: data['count'] as int? ?? results.length,
  //     hasNext: data['next'] != null,
  //     results: results,
  //   );
  // }

  @override
  Future<void> deleteProperty(String id) async {
    await _dioClient.sendRequest(
      RequestType.delete,
      '${EndPoint.properties}$id/',
    );
  }
}
