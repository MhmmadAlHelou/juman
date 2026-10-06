part of 'favourites_cubit.dart';

enum FavoritesStatus { initial, loading, loaded, error }

class FavoritesState extends Equatable {
  const FavoritesState({
    this.status = FavoritesStatus.initial,
    this.favorites = const [],
    this.favoriteIds = const {},
    this.errorMessage,
  });

  final FavoritesStatus status;
  final List<FavoriteListItem> favorites;
  final Set<String> favoriteIds;
  final String? errorMessage;

  FavoritesState copyWith({
    FavoritesStatus? status,
    List<FavoriteListItem>? favorites,
    Set<String>? favoriteIds,
    String? errorMessage,
  }) => FavoritesState(
    status: status ?? this.status,
    favorites: favorites ?? this.favorites,
    favoriteIds: favoriteIds ?? this.favoriteIds,
    errorMessage: errorMessage,
  );

  @override
  List<Object?> get props => [status, favorites, favoriteIds, errorMessage];
}
