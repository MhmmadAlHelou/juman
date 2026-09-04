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
