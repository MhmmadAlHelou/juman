part of 'locations_cubit.dart';

class LocationsState extends Equatable {
  const LocationsState({
    this.categories = const [],
    this.placeTypes = const [],
    this.cities = const [],
    this.isLoading = false,
  });

  final List<PropertyCategoryModel> categories;
  final List<PlaceTypeModel> placeTypes;
  final List<CityModel> cities;
  final bool isLoading;

  LocationsState copyWith({
    List<PropertyCategoryModel>? categories,
    List<PlaceTypeModel>? placeTypes,
    List<CityModel>? cities,
    bool? isLoading,
  }) {
    return LocationsState(
      categories: categories ?? this.categories,
      placeTypes: placeTypes ?? this.placeTypes,
      cities: cities ?? this.cities,
      isLoading: isLoading ?? this.isLoading,
    );
  }

  @override
  List<Object?> get props => [categories, placeTypes, cities, isLoading];
}
