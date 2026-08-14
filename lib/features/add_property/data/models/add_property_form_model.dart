import 'package:ewan/features/home/data/models/properties_model.dart';

class AddPropertyFormModel {
  // Step 1
  final PropertyCategory? propertyCategory;
  final PlaceType? placeType;
  final String title;
  final String description;

  // Step 2
  final City? city;
  final String? area;
  final String streetAddress;
  final Map<String, dynamic>? mapLocation;

  // Step 3
  final double? propertySize;
  final int maximumGuests;
  final int bedrooms;
  final int bathrooms;
  final List<Amenity> amenities;

  // Step 4
  final List<String> imagePaths;

  // Step 5
  final int? minimumStay;
  final int? maximumStay;
  final double? pricePerNight;
  final List<String> documentPaths;

  const AddPropertyFormModel({
    this.propertyCategory,
    this.placeType,
    this.title = '',
    this.description = '',
    this.city,
    this.area,
    this.streetAddress = '',
    this.mapLocation,
    this.propertySize = 0.0,
    this.maximumGuests = 1,
    this.bedrooms = 0,
    this.bathrooms = 0,
    this.amenities = const [],
    this.imagePaths = const [],
    this.minimumStay,
    this.maximumStay,
    this.pricePerNight,
    this.documentPaths = const [],
  });

  AddPropertyFormModel copyWith({
    PropertyCategory? propertyCategory,
    PlaceType? placeType,
    String? title,
    String? description,
    City? city,
    String? area,
    String? streetAddress,
    Map<String, dynamic>? mapLocation,
    double? propertySize,
    int? maximumGuests,
    int? bedrooms,
    int? bathrooms,
    List<Amenity>? amenities,
    List<String>? imagePaths,
    int? minimumStay,
    int? maximumStay,
    double? pricePerNight,
    List<String>? documentPaths,
  }) {
    return AddPropertyFormModel(
      propertyCategory: propertyCategory ?? this.propertyCategory,
      placeType: placeType ?? this.placeType,
      title: title ?? this.title,
      description: description ?? this.description,
      city: city ?? this.city,
      area: area ?? this.area,
      streetAddress: streetAddress ?? this.streetAddress,
      mapLocation: mapLocation ?? this.mapLocation,
      propertySize: propertySize ?? this.propertySize,
      maximumGuests: maximumGuests ?? this.maximumGuests,
      bedrooms: bedrooms ?? this.bedrooms,
      bathrooms: bathrooms ?? this.bathrooms,
      amenities: amenities ?? this.amenities,
      imagePaths: imagePaths ?? this.imagePaths,
      minimumStay: minimumStay ?? this.minimumStay,
      maximumStay: maximumStay ?? this.maximumStay,
      pricePerNight: pricePerNight ?? this.pricePerNight,
      documentPaths: documentPaths ?? this.documentPaths,
    );
  }
}
