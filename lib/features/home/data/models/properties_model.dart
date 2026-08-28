enum PropertyStatus { draft, pending, approved, rejected, unknown }

PropertyStatus statusFromString(String? raw) {
  switch (raw) {
    case 'DRAFT':
      return PropertyStatus.draft;
    case 'PENDING':
      return PropertyStatus.pending;
    case 'APPROVED':
      return PropertyStatus.approved;
    case 'REJECTED':
      return PropertyStatus.rejected;
    default:
      return PropertyStatus.unknown;
  }
}

class PropertyCategoryModel {
  const PropertyCategoryModel({
    required this.id,
    required this.name,
    this.icon,
  });

  final String id;
  final String name;
  final String? icon;

  factory PropertyCategoryModel.fromJson(Map<String, dynamic> json) {
    return PropertyCategoryModel(
      id: json['id'] as String,
      name: json['name'] as String,
      icon: json['icon'] as String?,
    );
  }
}

class PlaceTypeModel {
  const PlaceTypeModel({required this.id, required this.name, this.icon});

  final String id;
  final String name;
  final String? icon;

  factory PlaceTypeModel.fromJson(Map<String, dynamic> json) {
    return PlaceTypeModel(
      id: json['id'] as String,
      name: json['name'] as String,
      icon: json['icon'] as String?,
    );
  }
}

class CityModel {
  const CityModel({
    required this.id,
    required this.name,
    this.icon,
    this.areas = const <AreaModel>[],
  });

  final String id;
  final String name;
  final String? icon;
  final List<AreaModel> areas;

  factory CityModel.fromJson(Map<String, dynamic> json) {
    return CityModel(
      id: json['id'] as String,
      name: json['name'] as String,
      icon: json['icon'] as String?,
      areas: (json['areas'] as List<dynamic>? ?? <dynamic>[])
          .map(
            (dynamic a) => AreaModel(
              id: a['id'] as String,
              cityId: json['id'] as String,
              name: a['name'] as String,
            ),
          )
          .toList(),
    );
  }
}

class AreaModel {
  const AreaModel({required this.id, required this.cityId, required this.name});

  final String id;
  final String cityId;
  final String name;

  factory AreaModel.fromJson(Map<String, dynamic> json) {
    return AreaModel(
      id: json['id'] as String,
      cityId: json['city'] as String,
      name: json['name'] as String,
    );
  }
}

class PropertyImageModel {
  const PropertyImageModel({
    required this.id,
    required this.image,
    required this.isCover,
  });

  final String id;
  final String image;
  final bool isCover;

  factory PropertyImageModel.fromJson(Map<String, dynamic> json) {
    return PropertyImageModel(
      id: json['id'] as String,
      image: json['image'] as String,
      isCover: json['is_cover'] as bool? ?? false,
    );
  }
}

class AmenityModel {
  const AmenityModel({required this.id, required this.name, this.icon});

  final String id;
  final String name;
  final String? icon;

  factory AmenityModel.fromJson(Map<String, dynamic> json) {
    return AmenityModel(
      id: json['id'] as String,
      name: json['name'] as String,
      icon: json['icon'] as String?,
    );
  }
}

class PropertiesModel {
  const PropertiesModel({
    required this.id,
    required this.title,
    required this.description,
    required this.status,
    required this.category,
    required this.placeType,
    required this.city,
    required this.area,
    required this.detailedAddress,
    required this.latitude,
    required this.longitude,
    required this.size,
    required this.maxGuests,
    required this.bedrooms,
    required this.bathrooms,
    required this.minStay,
    required this.maxStay,
    required this.pricePerNight,
    required this.images,
    required this.amenities,
    required this.createdAt,
    this.rejectionReason,
  });

  final String id;
  final String title;
  final String description;
  final PropertyStatus status;
  final PropertyCategoryModel category;
  final PlaceTypeModel placeType;
  final CityModel city;
  final AreaModel area;
  final String detailedAddress;
  final double? latitude;
  final double? longitude;
  final int size;
  final int maxGuests;
  final int bedrooms;
  final int bathrooms;
  final int minStay;
  final int maxStay;
  final double pricePerNight;
  final List<PropertyImageModel> images;
  final List<AmenityModel> amenities;
  final DateTime? createdAt;
  final String? rejectionReason;

  bool get hasValidCoordinates => latitude != null && longitude != null;

  String? get coverImageUrl {
    if (images.isEmpty) return null;
    final PropertyImageModel cover = images.firstWhere(
      (PropertyImageModel img) => img.isCover,
      orElse: () => images.first,
    );
    return cover.image;
  }

  factory PropertiesModel.fromJson(Map<String, dynamic> json) {
    return PropertiesModel(
      id: json['id'] as String,
      title: json['title'] as String? ?? '',
      description: json['description'] as String? ?? '',
      status: statusFromString(json['status'] as String?),
      category: PropertyCategoryModel.fromJson(
        json['category'] as Map<String, dynamic>,
      ),
      placeType: PlaceTypeModel.fromJson(
        json['place_type'] as Map<String, dynamic>,
      ),
      city: CityModel.fromJson(json['city'] as Map<String, dynamic>),
      area: AreaModel.fromJson(json['area'] as Map<String, dynamic>),
      detailedAddress: json['detailed_address'] as String? ?? '',
      // lat/lng come back as String from the API — parse defensively.
      latitude: double.tryParse(json['latitude']?.toString() ?? ''),
      longitude: double.tryParse(json['longitude']?.toString() ?? ''),
      size: json['size'] as int? ?? 0,
      maxGuests: json['max_guests'] as int? ?? 0,
      bedrooms: json['bedrooms'] as int? ?? 0,
      bathrooms: json['bathrooms'] as int? ?? 0,
      minStay: json['min_stay'] as int? ?? 1,
      maxStay: json['max_stay'] as int? ?? 30,
      pricePerNight:
          double.tryParse(json['price_per_night']?.toString() ?? '') ?? 0,
      images: (json['images'] as List<dynamic>? ?? <dynamic>[])
          .map(
            (dynamic e) =>
                PropertyImageModel.fromJson(e as Map<String, dynamic>),
          )
          .toList(),
      amenities: (json['amenities'] as List<dynamic>? ?? <dynamic>[])
          .map((dynamic e) => AmenityModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      createdAt: DateTime.tryParse(json['created_at'] as String? ?? ''),
      rejectionReason: json['rejection_reason'] as String?,
    );
  }
}

class PaginatedResult<T> {
  const PaginatedResult({
    required this.count,
    required this.hasNext,
    required this.results,
  });

  final int count;
  final bool hasNext;
  final List<T> results;
}

// import 'package:flutter/material.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';

// enum PropertyCategory {
//   villas,
//   chalets,
//   countryHouses,
//   furnishedApartments,
//   farmStaysAndRetreats,
// }

// extension PropertyCategoryExtension on PropertyCategory {
//   static PropertyCategory fromString(String value) {
//     return PropertyCategory.values.firstWhere(
//       (e) => e.name == value,
//       orElse: () => PropertyCategory.villas,
//     );
//   }
// }

// extension PropertyCategoryLabel on PropertyCategory {
//   String get label {
//     switch (this) {
//       case PropertyCategory.villas:
//         return 'Villa';
//       case PropertyCategory.chalets:
//         return 'Chalets';
//       case PropertyCategory.countryHouses:
//         return 'Country Houses';
//       case PropertyCategory.furnishedApartments:
//         return 'Furnished Apartments';
//       case PropertyCategory.farmStaysAndRetreats:
//         return 'Farm Stays And Retreats';
//     }
//   }
// }

// enum PlaceType { entirePlace, privateRoom, sharedRoom }

// extension PlaceTypeLabel on PlaceType {
//   String get label {
//     switch (this) {
//       case PlaceType.entirePlace:
//         return 'Entire Place';
//       case PlaceType.privateRoom:
//         return 'Private Room';
//       case PlaceType.sharedRoom:
//         return 'Shared Room';
//     }
//   }
// }

// extension PlaceTypeExtension on PlaceType {
//   static PlaceType fromString(String value) {
//     return PlaceType.values.firstWhere(
//       (e) => e.name == value,
//       orElse: () => PlaceType.entirePlace,
//     );
//   }
// }

// enum Amenity {
//   wifi,
//   airConditioning,
//   heating,
//   kitchen,
//   refrigerator,
//   washingMachine,
//   tv,
//   freeParking,
//   swimmingPool,
//   balcony,
//   garden,
//   elevator,
//   workspaceDesk,
//   hotWater,
//   internet,
//   gym,
//   bbqArea,
//   petFriendly,
//   exteriorSecurityCamera,
// }

// extension AmenityLabel on Amenity {
//   String get label {
//     switch (this) {
//       case Amenity.wifi:
//         return 'Wifi';
//       case Amenity.airConditioning:
//         return 'Air Conditioning';
//       case Amenity.heating:
//         return 'Heating';
//       case Amenity.kitchen:
//         return 'Kitchen';
//       case Amenity.refrigerator:
//         return 'Refrigerator';
//       case Amenity.washingMachine:
//         return 'Washing Machine';
//       case Amenity.tv:
//         return 'TV';
//       case Amenity.freeParking:
//         return 'Free Parking';
//       case Amenity.swimmingPool:
//         return 'Swimming Pool';
//       case Amenity.balcony:
//         return 'Balcony';
//       case Amenity.garden:
//         return 'Garden';
//       case Amenity.elevator:
//         return 'Elevator';
//       case Amenity.workspaceDesk:
//         return 'Workspace Desk';
//       case Amenity.hotWater:
//         return 'Hot Water';
//       case Amenity.internet:
//         return 'Internet';
//       case Amenity.gym:
//         return 'Gym';
//       case Amenity.bbqArea:
//         return 'BBQ Area';
//       case Amenity.petFriendly:
//         return 'Pet Friendly';
//       case Amenity.exteriorSecurityCamera:
//         return 'Exterior Security Camera';
//     }
//   }

//   IconData get icon {
//     switch (this) {
//       case Amenity.wifi:
//         return Icons.wifi;
//       case Amenity.airConditioning:
//         return Icons.ac_unit;
//       case Amenity.heating:
//         return Icons.thermostat;
//       case Amenity.kitchen:
//         return Icons.kitchen;
//       case Amenity.refrigerator:
//         return Icons.kitchen_outlined;
//       case Amenity.washingMachine:
//         return Icons.local_laundry_service;
//       case Amenity.tv:
//         return Icons.tv;
//       case Amenity.freeParking:
//         return Icons.local_parking;
//       case Amenity.swimmingPool:
//         return Icons.pool;
//       case Amenity.balcony:
//         return Icons.balcony;
//       case Amenity.garden:
//         return Icons.yard;
//       case Amenity.elevator:
//         return Icons.elevator;
//       case Amenity.workspaceDesk:
//         return Icons.desk;
//       case Amenity.hotWater:
//         return Icons.hot_tub;
//       case Amenity.internet:
//         return Icons.router;
//       case Amenity.gym:
//         return Icons.fitness_center;
//       case Amenity.bbqArea:
//         return Icons.outdoor_grill;
//       case Amenity.petFriendly:
//         return Icons.pets;
//       case Amenity.exteriorSecurityCamera:
//         return Icons.videocam;
//     }
//   }
// }

// extension AmenityExtension on Amenity {
//   static Amenity fromString(String value) {
//     return Amenity.values.firstWhere(
//       (e) => e.name == value,
//       orElse: () => Amenity.wifi,
//     );
//   }
// }

// enum City { damascus, ruralDamascus }

// extension CityLabel on City {
//   String get label {
//     switch (this) {
//       case City.damascus:
//         return 'Damascus';
//       case City.ruralDamascus:
//         return 'Rural Damascus';
//     }
//   }
// }

// extension CityExtension on City {
//   static City fromString(String value) {
//     return City.values.firstWhere(
//       (e) => e.name == value,
//       orElse: () => City.damascus,
//     );
//   }
// }

// class PropertiesModel {
//   final String? id;
//   final PropertyCategory propertyCategory;
//   final PlaceType placeType;
//   final String title;
//   final String description;
//   final City city;
//   final String area;
//   final String streetAddress;
//   final Map<String, dynamic> mapLocation;
//   final double? propertySize;
//   final int maximumGuests;
//   final int bedrooms;
//   final int bathrooms;
//   final List<Amenity> amenities;
//   final List<String> images;
//   final int minimumStay;
//   final int? maximumStay;
//   final double price;
//   final List<String> document;

//   const PropertiesModel({
//     this.id,
//     required this.propertyCategory,
//     required this.placeType,
//     required this.title,
//     required this.description,
//     required this.city,
//     required this.area,
//     required this.streetAddress,
//     required this.mapLocation,
//     this.propertySize,
//     required this.maximumGuests,
//     required this.bedrooms,
//     required this.bathrooms,
//     required this.amenities,
//     required this.images,
//     required this.minimumStay,
//     this.maximumStay,
//     required this.price,
//     required this.document,
//   });

//   factory PropertiesModel.fromJson(Map<String, dynamic> json, {String? id}) {
//     return PropertiesModel(
//       id: id,
//       propertyCategory: PropertyCategoryExtension.fromString(
//         json['propertyCategory'] ?? '',
//       ),
//       placeType: PlaceTypeExtension.fromString(json['placeType'] ?? ''),
//       title: json['title'] ?? '',
//       description: json['description'] ?? '',
//       city: CityExtension.fromString(json['city'] ?? ''),
//       area: json['area'] ?? '',
//       streetAddress: json['streetAddress'] ?? '',
//       mapLocation: Map<String, dynamic>.from(json['mapLocation'] ?? {}),
//       propertySize: (json['propertySize'] ?? 0).toDouble(),
//       maximumGuests: json['maximumGuests'] ?? 0,
//       bedrooms: json['bedrooms'] ?? 0,
//       bathrooms: json['bathrooms'] ?? 0,
//       amenities: (json['amenities'] as List<dynamic>? ?? [])
//           .map((e) => AmenityExtension.fromString(e))
//           .toList(),
//       images: List<String>.from(json['images'] ?? []),
//       minimumStay: json['minimumStay'] ?? 0,
//       maximumStay: json['maximumStay'] ?? 0,
//       price: (json['price'] ?? 0).toDouble(),
//       document: List<String>.from(json['document'] ?? []),
//     );
//   }

//   Map<String, dynamic> toJson() {
//     return {
//       'propertyCategory': propertyCategory.name,
//       'placeType': placeType.name,
//       'title': title,
//       'description': description,
//       'city': city.name,
//       'area': area,
//       'streetAddress': streetAddress,
//       'mapLocation': mapLocation,
//       'propertySize': propertySize,
//       'maximumGuests': maximumGuests,
//       'bedrooms': bedrooms,
//       'bathrooms': bathrooms,
//       'amenities': amenities.map((e) => e.name).toList(),
//       'images': images,
//       'minimumStay': minimumStay,
//       'maximumStay': maximumStay,
//       'price': price,
//       'document': document,
//     };
//   }

//   PropertiesModel copyWith({
//     String? id,
//     PropertyCategory? propertyCategory,
//     PlaceType? placeType,
//     String? title,
//     String? description,
//     City? city,
//     String? area,
//     String? streetAddress,
//     Map<String, dynamic>? mapLocation,
//     double? propertySize,
//     int? maximumGuests,
//     int? bedrooms,
//     int? bathrooms,
//     List<Amenity>? amenities,
//     List<String>? images,
//     int? minimumStay,
//     int? maximumStay,
//     double? price,
//     List<String>? document,
//   }) {
//     return PropertiesModel(
//       id: id ?? this.id,
//       propertyCategory: propertyCategory ?? this.propertyCategory,
//       placeType: placeType ?? this.placeType,
//       title: title ?? this.title,
//       description: description ?? this.description,
//       city: city ?? this.city,
//       area: area ?? this.area,
//       streetAddress: streetAddress ?? this.streetAddress,
//       mapLocation: mapLocation ?? this.mapLocation,
//       propertySize: propertySize ?? this.propertySize,
//       maximumGuests: maximumGuests ?? this.maximumGuests,
//       bedrooms: bedrooms ?? this.bedrooms,
//       bathrooms: bathrooms ?? this.bathrooms,
//       amenities: amenities ?? this.amenities,
//       images: images ?? this.images,
//       minimumStay: minimumStay ?? this.minimumStay,
//       maximumStay: maximumStay ?? this.maximumStay,
//       price: price ?? this.price,
//       document: document ?? this.document,
//     );
//   }
// }

// extension PropertiesModelLocation on PropertiesModel {
//   double get latitude => (mapLocation['lat'] as num?)?.toDouble() ?? 0.0;
//   double get longitude => (mapLocation['lng'] as num?)?.toDouble() ?? 0.0;

//   LatLng get latLng => LatLng(latitude, longitude);
// }
