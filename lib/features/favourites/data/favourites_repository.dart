import 'package:ewan/core/managers/preference/pref_data.dart';
import 'package:ewan/features/favourites/data/datasources/favorites_local_data_source.dart';
import 'package:ewan/features/favourites/data/datasources/favorites_remote_data_source.dart';
import 'package:ewan/features/favourites/data/models/favourites_model.dart';
import 'package:ewan/features/home/data/models/properties_model.dart';

abstract class FavoritesRepository {
  Future<List<FavoriteListItem>> getFavorites();
  Future<void> addFavorite(PropertiesModel property);
  Future<void> removeFavorite(String propertyId);
  bool isFavoriteLocally(String propertyId); // for guest heart-icon state
  Future<void> syncAfterLogin();
}

class FavoritesRepositoryImpl implements FavoritesRepository {
  FavoritesRepositoryImpl(this._local, this._remote);

  final FavoritesLocalDataSource _local;
  final FavoritesRemoteDataSource _remote;

  @override
  Future<List<FavoriteListItem>> getFavorites() async {
    if (!PrefData.isSignedIn) {
      return _local.getFavorites().map(FavoriteListItem.fromCache).toList();
    }
    final favorites = await _remote.getFavorites(); // List<PropertiesModel>
    return favorites.map(FavoriteListItem.fromProperty).toList();
  }

  @override
  Future<void> addFavorite(PropertiesModel property) {
    if (!PrefData.isSignedIn) {
      _local.addFavorite(property);
      return Future.value();
    }
    return _remote.addFavorite(property.id);
  }

  @override
  Future<void> removeFavorite(String propertyId) {
    if (!PrefData.isSignedIn) {
      _local.removeFavorite(propertyId);
      return Future.value();
    }
    return _remote.removeFavorite(propertyId);
  }

  @override
  bool isFavoriteLocally(String propertyId) => _local.isFavorite(propertyId);

  @override
  Future<void> syncAfterLogin() async {
    final ids = _local.getFavoriteIdsAndClear();
    if (ids.isEmpty) return;
    await _remote.syncFavorites(ids);
  }
}
