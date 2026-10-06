import 'package:ewan/features/home/data/models/properties_model.dart';

class FavoriteCacheItem {
  const FavoriteCacheItem({
    required this.id,
    required this.title,
    required this.cityName,
    required this.pricePerNight,
    this.coverImageUrl,
  });

  final String id;
  final String title;
  final String cityName;
  final double pricePerNight;
  final String? coverImageUrl;

  factory FavoriteCacheItem.fromProperty(PropertiesModel property) =>
      FavoriteCacheItem(
        id: property.id,
        title: property.title,
        cityName: property.city.name,
        pricePerNight: property.pricePerNight,
        coverImageUrl: property.coverImageUrl,
      );

  factory FavoriteCacheItem.fromJson(Map<String, dynamic> json) =>
      FavoriteCacheItem(
        id: json['id'] as String,
        title: json['title'] as String? ?? '',
        cityName: json['city_name'] as String? ?? '',
        pricePerNight: (json['price_per_night'] as num?)?.toDouble() ?? 0,
        coverImageUrl: json['cover_image_url'] as String?,
      );

  Map<String, dynamic> toJson() => <String, dynamic>{
    'id': id,
    'title': title,
    'city_name': cityName,
    'price_per_night': pricePerNight,
    'cover_image_url': coverImageUrl,
  };
}
