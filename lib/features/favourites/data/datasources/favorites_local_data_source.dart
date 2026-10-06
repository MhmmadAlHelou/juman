import 'package:ewan/core/core.dart';
import 'package:ewan/features/favourites/data/models/favorite_cache_item.dart';
import 'package:ewan/features/home/data/models/properties_model.dart';

abstract class FavoritesLocalDataSource {
  List<FavoriteCacheItem> getFavorites();
  void addFavorite(PropertiesModel property);
  void removeFavorite(String propertyId);
  bool isFavorite(String propertyId);
  List<String> getFavoriteIdsAndClear();
}

class FavoritesLocalDataSourceImpl implements FavoritesLocalDataSource {
  @override
  List<FavoriteCacheItem> getFavorites() => PrefData.favoriteProperties;

  @override
  void addFavorite(PropertiesModel property) {
    final current = PrefData.favoriteProperties;
    if (current.any((p) => p.id == property.id)) return;
    PrefData.favoriteProperties = [
      ...current,
      FavoriteCacheItem.fromProperty(property),
    ];
  }

  @override
  void removeFavorite(String propertyId) {
    PrefData.favoriteProperties = PrefData.favoriteProperties
        .where((p) => p.id != propertyId)
        .toList();
  }

  @override
  bool isFavorite(String propertyId) =>
      PrefData.favoriteProperties.any((p) => p.id == propertyId);

  @override
  List<String> getFavoriteIdsAndClear() {
    final ids = PrefData.favoriteProperties.map((p) => p.id).toList();
    PrefData.clearFavoriteProperties();
    return ids;
  }
}
