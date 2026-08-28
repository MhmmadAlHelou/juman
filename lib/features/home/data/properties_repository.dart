import 'package:ewan/core/core.dart';
import 'package:ewan/features/home/data/models/properties_model.dart';

abstract class PropertiesRepository {
  Future<List<PropertiesModel>> getAllProperties();

  Future<PaginatedResult<PropertiesModel>> getProperties({
    int page = 1,
    int pageSize = 10,
  });

  // Future<List<PropertiesModel>> getListings();
  // Future<void> addProperty(PropertiesModel property);
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
  }) async {
    final Response<dynamic> response = await _dioClient.sendRequest(
      RequestType.get,
      EndPoint.properties,
      queryParameters: <String, dynamic>{'page': page, 'page_size': pageSize},
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
  Future<List<PropertiesModel>> getAllProperties() async {
    final List<PropertiesModel> all = <PropertiesModel>[];
    int page = 1;

    while (true) {
      final PaginatedResult<PropertiesModel> pageResult = await getProperties(
        page: page,
        pageSize: _mapFetchPageSize,
      );
      all.addAll(pageResult.results);

      if (!pageResult.hasNext) break;
      page++;
    }

    return all;
  }
}


// class MockListingsRepository implements PropertiesRepository {
//   final List<PropertiesModel> _mockListings = [
//     // PropertiesModel(
//     //   id: '1',
//     //   propertyCategory: PropertyCategory.countryHouses,
//     //   placeType: PlaceType.entirePlace,
//     //   title: 'Flat in 15th Arrondissement',
//     //   description: 'Small independent studio for 1 person, Paris 15',
//     //   city: City.damascus,
//     //   area: 'Saint-Lambert',
//     //   streetAddress: 'Rue Vaugirard',
//     //   mapLocation: {'lat': 33.5180640, 'lng': 36.2935814},
//     //   maximumGuests: 3,
//     //   bedrooms: 1,
//     //   bathrooms: 1,
//     //   amenities: [Amenity.wifi, Amenity.kitchen],
//     //   images: const [
//     //     'https://images.unsplash.com/photo-1631049307264-da0ec9d70304?w=800&q=80',
//     //     'https://images.unsplash.com/photo-1555854877-bab0e564b8d5?w=800&q=80',
//     //     'https://images.unsplash.com/photo-1522771739844-6a9f6d5f14af?w=800&q=80',
//     //     'https://images.unsplash.com/photo-1595576508898-0ad5c879a061?w=800&q=80',
//     //     'https://images.unsplash.com/photo-1505693416388-ac5ce068fe85?w=800&q=80',
//     //   ],
//     //   minimumStay: 1,
//     //   price: 380,
//     //   document: const [],
//     // ),
//     // PropertiesModel(
//     //   id: '2',
//     //   propertyCategory: PropertyCategory.furnishedApartments,
//     //   placeType: PlaceType.entirePlace,
//     //   title: 'Cozy studio near Vaugirard',
//     //   description: 'Entire studio, Paris 15',
//     //   city: City.damascus,
//     //   area: 'Vaugirard',
//     //   streetAddress: 'Rue Blomet',
//     //   mapLocation: {'lat': 33.5186541, 'lng': 36.2938225},
//     //   maximumGuests: 2,
//     //   bedrooms: 1,
//     //   bathrooms: 1,
//     //   amenities: [Amenity.wifi, Amenity.airConditioning],
//     //   images: const [
//     //     'https://images.unsplash.com/photo-1631049307264-da0ec9d70304?w=800&q=80',
//     //     'https://images.unsplash.com/photo-1555854877-bab0e564b8d5?w=800&q=80',
//     //     'https://images.unsplash.com/photo-1522771739844-6a9f6d5f14af?w=800&q=80',
//     //     'https://images.unsplash.com/photo-1595576508898-0ad5c879a061?w=800&q=80',
//     //     'https://images.unsplash.com/photo-1505693416388-ac5ce068fe85?w=800&q=80',
//     //   ],
//     //   minimumStay: 1,
//     //   price: 465,
//     //   document: const [],
//     // ),
    
//   ];

//   @override
//   Future<List<PropertiesModel>> getListings() async {
//     //temp logic to simulate network delay and return mock data
//     await Future.delayed(const Duration(milliseconds: 300));

//     return _mockListings;
//   }

//   @override
//   Future<void> addProperty(PropertiesModel property) async {
//     await Future.delayed(const Duration(milliseconds: 500));
//     _mockListings.add(property);
//     // later with real API: this will be an actual POST request
//   }
// }
