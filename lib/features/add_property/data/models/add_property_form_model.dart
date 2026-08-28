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
  final List<String> uploadedImageUris;

  // Step 5
  final int? minimumStay;
  final int? maximumStay;
  final double? pricePerNight;
  final List<String> uploadedDocumentUris;

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
    this.uploadedImageUris = const <String>[],
    this.minimumStay,
    this.maximumStay,
    this.pricePerNight,
    this.uploadedDocumentUris = const <String>[],
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
    List<String>? uploadedImageUris,
    int? minimumStay,
    int? maximumStay,
    double? pricePerNight,
    List<String>? uploadedDocumentUris,
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
      uploadedImageUris: uploadedImageUris ?? this.uploadedImageUris,
      minimumStay: minimumStay ?? this.minimumStay,
      maximumStay: maximumStay ?? this.maximumStay,
      pricePerNight: pricePerNight ?? this.pricePerNight,
      uploadedDocumentUris: uploadedDocumentUris ?? this.uploadedDocumentUris,
    );
  }

  /// يبني الحالة من رد الـ API (POST الفارغ، أو PATCH، أو GET عند الـ resume)
  /// كل الحقول المتداخلة nullable لأن الـ draft ممكن يكون فاضي جزئياً
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
      // الصور الراجعة من GET/PATCH هي كائنات {id, image, is_cover} كاملة،
      // مو URIs خام - نستخرج .image فقط لأنها مرفوعة أصلاً (مو محتاجة إعادة رفع)
      uploadedImageUris: (json['images'] as List<dynamic>? ?? <dynamic>[])
          .map((dynamic e) => (e as Map<String, dynamic>)['image'] as String)
          .toList(),
      minimumStay: json['min_stay'] as int?,
      maximumStay: json['max_stay'] as int?,
      pricePerNight: double.tryParse(json['price_per_night']?.toString() ?? ''),
      // نفس منطق الصور - نفترض شكل مشابه {id, document} لحين تأكيد Swagger
      uploadedDocumentUris: (json['documents'] as List<dynamic>? ?? <dynamic>[])
          .map((dynamic e) => (e as Map<String, dynamic>)['file'] as String)
          .toList(),
    );
  }

  // ---- بناء الـ payload الجزئي لكل خطوة (بديل PropertyCreatePayload) ----

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

  Map<String, dynamic> toImagesJson() => {
    if (uploadedImageUris.isNotEmpty) 'uploaded_images': uploadedImageUris,
  };

  Map<String, dynamic> toPricingJson() => {
    if (minimumStay != null) 'min_stay': minimumStay,
    if (maximumStay != null) 'max_stay': maximumStay,
    if (pricePerNight != null)
      'price_per_night': pricePerNight!.toStringAsFixed(2),
    if (uploadedDocumentUris.isNotEmpty)
      'uploaded_documents': uploadedDocumentUris,
  };
}
