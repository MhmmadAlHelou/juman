import 'package:equatable/equatable.dart';
import 'package:ewan/features/favourites/data/models/favorite_cache_item.dart';
import 'package:ewan/features/home/data/models/properties_model.dart';

class FavoriteListItem extends Equatable {
  const FavoriteListItem({
    required this.id,
    required this.title,
    required this.cityName,
    required this.pricePerNight,
    this.coverImageUrl,
    this.fullProperty,
  });

  final String id;
  final String title;
  final String cityName;
  final double pricePerNight;
  final String? coverImageUrl;
  final PropertiesModel? fullProperty;

  factory FavoriteListItem.fromProperty(PropertiesModel property) =>
      FavoriteListItem(
        id: property.id,
        title: property.title,
        cityName: property.city.name,
        pricePerNight: property.pricePerNight,
        coverImageUrl: property.coverImageUrl,
        fullProperty: property,
      );

  factory FavoriteListItem.fromCache(FavoriteCacheItem item) =>
      FavoriteListItem(
        id: item.id,
        title: item.title,
        cityName: item.cityName,
        pricePerNight: item.pricePerNight,
        coverImageUrl: item.coverImageUrl,
        fullProperty: null,
      );

  @override
  List<Object?> get props => [
    id,
    title,
    cityName,
    pricePerNight,
    coverImageUrl,
    fullProperty,
  ];
}
