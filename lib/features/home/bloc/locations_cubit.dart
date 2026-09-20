import 'package:equatable/equatable.dart';
import 'package:ewan/core/core.dart';
import 'package:ewan/features/add_property/data/locations_repository.dart';
import 'package:ewan/features/home/data/models/properties_model.dart';

part 'locations_state.dart';

class LocationsCubit extends Cubit<LocationsState> {
  LocationsCubit({required LocationsRepository repository})
    : _repository = repository,
      super(const LocationsState());

  final LocationsRepository _repository;

  Future<void> loadReferenceData() async {
    if (state.categories.isNotEmpty) return; // cached already
    emit(state.copyWith(isLoading: true));
    try {
      final categories = await _repository.getCategories();
      final placeTypes = await _repository.getPlaceTypes();
      final cities = await _repository.getCities();
      emit(
        state.copyWith(
          categories: categories,
          placeTypes: placeTypes,
          cities: cities,
          isLoading: false,
        ),
      );
    } catch (e, st) {
      Logger().e('Failed to load reference data', error: e, stackTrace: st);
      emit(state.copyWith(isLoading: false));
    }
  }
}
