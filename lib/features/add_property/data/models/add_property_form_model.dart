import 'package:ewan/features/add_property/data/models/uploaded_file_model.dart';
import 'package:ewan/features/home/data/models/properties_model.dart';

class AddPropertyFormModel {
  final String? id; // draft id - null Mado the First POST
  final PropertyStatus status;

  // Step 1
  final PropertyCategoryModel? propertyCategory;
  final PlaceTypeModel? placeType;
  final String title;
  final String description;

  // Step 2
  final CityModel? city;
  final AreaModel? area;
  final String streetAddress;
  final double? latitude;
  final double? longitude;

  // Step 3
  final int? propertySize;
  final int maximumGuests;
  final int bedrooms;
  final int bathrooms;
  final List<AmenityModel> amenities;

  // Step 4
  // final List<String> uploadedImageUris;
  final List<UploadedImageItem> uploadedImages;

  // Step 5
  final int? minimumStay;
  final int? maximumStay;
  final double? pricePerNight;
  // final List<String> uploadedDocumentUris;
  final List<UploadedDocumentItem> uploadedDocuments;

  const AddPropertyFormModel({
    this.id,
    this.status = PropertyStatus.draft,
    this.propertyCategory,
    this.placeType,
    this.title = '',
    this.description = '',
    this.city,
    this.area,
    this.streetAddress = '',
    this.latitude,
    this.longitude,
    this.propertySize = 0,
    this.maximumGuests = 1,
    this.bedrooms = 0,
    this.bathrooms = 0,
    this.amenities = const <AmenityModel>[],
    this.minimumStay,
    this.maximumStay,
    this.pricePerNight,
    this.uploadedImages = const <UploadedImageItem>[],
    this.uploadedDocuments = const <UploadedDocumentItem>[],
  });

  AddPropertyFormModel copyWith({
    String? id,
    PropertyStatus? status,
    PropertyCategoryModel? propertyCategory,
    PlaceTypeModel? placeType,
    String? title,
    String? description,
    CityModel? city,
    AreaModel? area,
    String? streetAddress,
    double? latitude,
    double? longitude,
    int? propertySize,
    int? maximumGuests,
    int? bedrooms,
    int? bathrooms,
    List<AmenityModel>? amenities,
    int? minimumStay,
    int? maximumStay,
    double? pricePerNight,
    List<UploadedImageItem>? uploadedImages,
    List<UploadedDocumentItem>? uploadedDocuments,
  }) {
    return AddPropertyFormModel(
      id: id ?? this.id,
      status: status ?? this.status,
      propertyCategory: propertyCategory ?? this.propertyCategory,
      placeType: placeType ?? this.placeType,
      title: title ?? this.title,
      description: description ?? this.description,
      city: city ?? this.city,
      area: area ?? this.area,
      streetAddress: streetAddress ?? this.streetAddress,
      latitude: latitude ?? this.latitude,
      longitude: longitude ?? this.longitude,
      propertySize: propertySize ?? this.propertySize,
      maximumGuests: maximumGuests ?? this.maximumGuests,
      bedrooms: bedrooms ?? this.bedrooms,
      bathrooms: bathrooms ?? this.bathrooms,
      amenities: amenities ?? this.amenities,
      minimumStay: minimumStay ?? this.minimumStay,
      maximumStay: maximumStay ?? this.maximumStay,
      pricePerNight: pricePerNight ?? this.pricePerNight,
      uploadedImages: uploadedImages ?? this.uploadedImages,
      uploadedDocuments: uploadedDocuments ?? this.uploadedDocuments,
    );
  }

  // The state is built from the API response (empty POST, PATCH, or GET on the resume)
  // All nested fields are nullable because the draft might be partially empty
  factory AddPropertyFormModel.fromJson(Map<String, dynamic> json) {
    return AddPropertyFormModel(
      id: json['id'] as String?,
      status: statusFromString(json['status'] as String?),
      propertyCategory: json['category'] != null
          ? PropertyCategoryModel.fromJson(
              json['category'] as Map<String, dynamic>,
            )
          : null,
      placeType: json['place_type'] != null
          ? PlaceTypeModel.fromJson(json['place_type'] as Map<String, dynamic>)
          : null,
      title: json['title'] as String? ?? '',
      description: json['description'] as String? ?? '',
      city: json['city'] != null
          ? CityModel.fromJson(json['city'] as Map<String, dynamic>)
          : null,
      area: json['area'] != null
          ? AreaModel.fromJson(json['area'] as Map<String, dynamic>)
          : null,
      streetAddress: json['detailed_address'] as String? ?? '',
      latitude: double.tryParse(json['latitude']?.toString() ?? ''),
      longitude: double.tryParse(json['longitude']?.toString() ?? ''),
      propertySize: json['size'] as int?,
      maximumGuests: json['max_guests'] as int? ?? 1,
      bedrooms: json['bedrooms'] as int? ?? 0,
      bathrooms: json['bathrooms'] as int? ?? 0,
      amenities: (json['amenities'] as List<dynamic>? ?? <dynamic>[])
          .map((dynamic e) => AmenityModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      minimumStay: json['min_stay'] as int?,
      maximumStay: json['max_stay'] as int?,
      pricePerNight: double.tryParse(json['price_per_night']?.toString() ?? ''),
      uploadedImages: (json['images'] as List<dynamic>? ?? <dynamic>[])
          .map(
            (dynamic e) =>
                UploadedImageItem.fromJson(e as Map<String, dynamic>),
          )
          .toList(),
      uploadedDocuments: (json['documents'] as List<dynamic>? ?? <dynamic>[])
          .map(
            (dynamic e) =>
                UploadedDocumentItem.fromJson(e as Map<String, dynamic>),
          )
          .toList(),
    );
  }

  Map<String, dynamic> toBasicInfoJson() => <String, dynamic>{
    if (propertyCategory != null) 'category': propertyCategory!.id,
    if (placeType != null) 'place_type': placeType!.id,
    if (title.isNotEmpty) 'title': title,
    if (description.isNotEmpty) 'description': description,
  };

  Map<String, dynamic> toLocationJson() => <String, dynamic>{
    if (city != null) 'city': city!.id,
    if (area != null) 'area': area!.id,
    if (streetAddress.isNotEmpty) 'detailed_address': streetAddress,
    if (latitude != null) 'latitude': latitude!.toStringAsFixed(6),
    if (longitude != null) 'longitude': longitude!.toStringAsFixed(6),
  };

  Map<String, dynamic> toDetailsJson() => <String, dynamic>{
    if (propertySize != null) 'size': propertySize,
    'max_guests': maximumGuests,
    'bedrooms': bedrooms,
    'bathrooms': bathrooms,
    'amenities': amenities.map((a) => a.id).toList(),
  };

  // Map<String, dynamic> toImagesJson() => {
  //   if (uploadedImageUris.isNotEmpty) 'uploaded_images': uploadedImageUris,
  // };
  // Images are now directly linked to the property during upload via property_id
  // (endpoint /api/uploads/image/), so there's no need to send them here.
  // This step is now only for verifying isImagesValid and proceeding to the next step.
  Map<String, dynamic> toImagesJson() => <String, dynamic>{};

  Map<String, dynamic> toPricingJson() => {
    if (minimumStay != null) 'min_stay': minimumStay,
    if (maximumStay != null) 'max_stay': maximumStay,
    if (pricePerNight != null)
      'price_per_night': pricePerNight!.toStringAsFixed(2),
    // if (uploadedDocumentUris.isNotEmpty)
    //   'uploaded_documents': uploadedDocumentUris,
  };

  // Map<String, dynamic> toFullJson() => <String, dynamic>{
  //   if (title.isNotEmpty) 'title': title,
  //   if (description.isNotEmpty) 'description': description,
  //   if (streetAddress.isNotEmpty) 'detailed_address': streetAddress,
  //   if (latitude != null) 'latitude': latitude!.toStringAsFixed(6),
  //   if (longitude != null) 'longitude': longitude!.toStringAsFixed(6),
  //   if (propertySize != null) 'size': propertySize,
  //   'max_guests': maximumGuests,
  //   'bedrooms': bedrooms,
  //   'bathrooms': bathrooms,
  //   if (minimumStay != null) 'min_stay': minimumStay,
  //   if (maximumStay != null) 'max_stay': maximumStay,
  //   if (pricePerNight != null)
  //     'price_per_night': pricePerNight!.toStringAsFixed(2),
  //   if (propertyCategory != null) 'category': propertyCategory!.id,
  //   if (placeType != null) 'place_type': placeType!.id,
  //   if (city != null) 'city': city!.id,
  //   if (area != null) 'area': area!.id,
  //   'amenities': amenities.map((a) => a.id).toList(),
  //   // if (uploadedImageUris.isNotEmpty) 'uploaded_images': uploadedImageUris,
  //   // if (uploadedDocumentUris.isNotEmpty)
  //   //   'uploaded_documents': uploadedDocumentUris,
  // };
}
