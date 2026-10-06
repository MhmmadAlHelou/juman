import 'package:equatable/equatable.dart';
import 'package:ewan/core/core.dart';
import 'package:ewan/features/favourites/data/favourites_repository.dart';
import 'package:ewan/features/favourites/data/models/favourites_model.dart';
import 'package:ewan/features/home/data/models/properties_model.dart';

part 'favourites_state.dart';

class FavoritesCubit extends Cubit<FavoritesState> {
  FavoritesCubit(this._repository) : super(const FavoritesState());

  final FavoritesRepository _repository;

  Future<void> loadFavorites() async {
    emit(state.copyWith(status: FavoritesStatus.loading));
    try {
      final favorites = await _repository.getFavorites();
      emit(
        state.copyWith(
          status: FavoritesStatus.loaded,
          favorites: favorites,
          favoriteIds: favorites.map((p) => p.id).toSet(),
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(
          status: FavoritesStatus.error,
          errorMessage: e.toString(),
        ),
      );
    }
  }

  bool isFavorite(String propertyId) => state.favoriteIds.contains(propertyId);

  Future<void> toggleFavorite(PropertiesModel property) async {
    final wasFavorite = state.favoriteIds.contains(property.id);

    final updatedIds = Set<String>.from(state.favoriteIds);
    final updatedList = List<FavoriteListItem>.from(state.favorites);
    if (wasFavorite) {
      updatedIds.remove(property.id);
      updatedList.removeWhere((p) => p.id == property.id);
    } else {
      updatedIds.add(property.id);
      updatedList.add(FavoriteListItem.fromProperty(property));
    }
    emit(state.copyWith(favoriteIds: updatedIds, favorites: updatedList));

    try {
      if (wasFavorite) {
        await _repository.removeFavorite(property.id);
      } else {
        await _repository.addFavorite(property);
      }
    } catch (_) {
      // Revert to the actual state from the source upon request failure.
      await loadFavorites();
    }
  }
}
