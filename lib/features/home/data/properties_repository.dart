import 'package:ewan/features/home/data/models/properties_model.dart';

abstract class PropertiesRepository {
  Future<List<PropertiesModel>> getListings();
}

class MockListingsRepository implements PropertiesRepository {
  @override
  Future<List<PropertiesModel>> getListings() async {
    //temp logic to simulate network delay and return mock data
    await Future.delayed(const Duration(milliseconds: 300));

    return [
      PropertiesModel(
        id: '1',
        propertyCategory: PropertyCategory.apartments,
        placeType: PlaceType.entirePlace,
        title: 'Flat in 15th Arrondissement',
        description: 'Small independent studio for 1 person, Paris 15',
        area: 'Saint-Lambert',
        streetAddress: 'Rue Vaugirard',
        mapLocation: {'lat': 33.5180640, 'lng': 36.2935814},
        maximumGuests: 3,
        bedrooms: 1,
        bathrooms: 1,
        amenities: [Amenity.wifi, Amenity.kitchen],
        images: const [
          'https://images.unsplash.com/photo-1631049307264-da0ec9d70304?w=800&q=80',
          'https://images.unsplash.com/photo-1555854877-bab0e564b8d5?w=800&q=80',
          'https://images.unsplash.com/photo-1522771739844-6a9f6d5f14af?w=800&q=80',
          'https://images.unsplash.com/photo-1595576508898-0ad5c879a061?w=800&q=80',
          'https://images.unsplash.com/photo-1505693416388-ac5ce068fe85?w=800&q=80',
        ],
        minimumStay: 1,
        price: 380,
        document: const [],
      ),
      PropertiesModel(
        id: '2',
        propertyCategory: PropertyCategory.apartments,
        placeType: PlaceType.entirePlace,
        title: 'Cozy studio near Vaugirard',
        description: 'Entire studio, Paris 15',
        area: 'Vaugirard',
        streetAddress: 'Rue Blomet',
        mapLocation: {'lat': 33.5186541, 'lng': 36.2938225},
        maximumGuests: 2,
        bedrooms: 1,
        bathrooms: 1,
        amenities: [Amenity.wifi, Amenity.airConditioning],
        images: const [
          'https://images.unsplash.com/photo-1631049307264-da0ec9d70304?w=800&q=80',
          'https://images.unsplash.com/photo-1555854877-bab0e564b8d5?w=800&q=80',
          'https://images.unsplash.com/photo-1522771739844-6a9f6d5f14af?w=800&q=80',
          'https://images.unsplash.com/photo-1595576508898-0ad5c879a061?w=800&q=80',
          'https://images.unsplash.com/photo-1505693416388-ac5ce068fe85?w=800&q=80',
        ],
        minimumStay: 1,
        price: 465,
        document: const [],
      ),
      // ... باقي الأسعار من الصورة (547, 590, 755, 429, 335, 443, 507, 450)
    ];
  }
}
