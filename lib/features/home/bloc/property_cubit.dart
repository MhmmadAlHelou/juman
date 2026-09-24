import 'package:equatable/equatable.dart';
import 'package:ewan/core/core.dart';
import 'package:ewan/features/home/data/models/property_search_filter_model.dart';
import 'package:ewan/features/home/presentation/helper/markers/marker_bitmap_generator.dart';
import 'package:ewan/features/home/data/models/properties_model.dart';
import 'package:ewan/features/home/data/properties_repository.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';

part 'property_state.dart';
// part 'property_cubit.freezed.dart';

// class PropertyCubit extends Cubit<PropertyState> {
//   PropertyCubit() : super(PropertyState.initial());
// }

class PropertyCubit extends Cubit<PropertyState> {
  final PropertiesRepository _repository;

  static const int _sheetPageSize = 10;

  PropertyCubit({required PropertiesRepository repository})
    : _repository = repository,
      super(const PropertyState()) {
    loadProperties();
  }

  Future<void> loadProperties() async {
    emit(state.copyWith(isLoading: true));
    try {
      final propertiesList = await _repository.getAllProperties();
      final markers = await _generateMarkers(propertiesList);

      if (isClosed) return;

      emit(
        state.copyWith(
          properties: propertiesList,
          isLoading: false,
          normalMarkerIcons: markers.normal,
          selectedMarkerIcons: markers.selected,
          visibleSheetCount: _sheetPageSize,
          isSearchActive: false,
          activeFilters: const PropertySearchFilterModel(),
        ),
      );
    } catch (e, st) {
      if (isClosed) return;
      Logger().e('Failed to load properties', error: e, stackTrace: st);
      emit(state.copyWith(isLoading: false));
    }
  }

  Future<void> searchProperties(PropertySearchFilterModel filters) async {
    emit(
      state.copyWith(
        isLoading: true,
        isSearchActive: true,
        activeFilters: filters,
      ),
    );
    try {
      final propertiesList = await _repository.getAllProperties(
        filters: filters.toQueryParams(),
      );
      final markers = await _generateMarkers(propertiesList);

      emit(
        state.copyWith(
          properties: propertiesList,
          isLoading: false,
          normalMarkerIcons: markers.normal,
          selectedMarkerIcons: markers.selected,
          visibleSheetCount: _sheetPageSize,
          clearSelection: true,
        ),
      );
    } catch (e, st) {
      Logger().e('Failed to search properties', error: e, stackTrace: st);
      emit(state.copyWith(isLoading: false));
    }
  }

  Future<void> resetSearch() async {
    await loadProperties();
  }

  Future<
    ({
      Map<String, BitmapDescriptor> normal,
      Map<String, BitmapDescriptor> selected,
    })
  >
  _generateMarkers(List<PropertiesModel> propertiesList) async {
    final normalIcons = <String, BitmapDescriptor>{};
    final selectedIcons = <String, BitmapDescriptor>{};

    for (final property in propertiesList) {
      if (!property.hasValidCoordinates) continue;
      normalIcons[property.id] = await MarkerBitmapGenerator.generate(
        price: property.pricePerNight,
        selected: false,
      );
      selectedIcons[property.id] = await MarkerBitmapGenerator.generate(
        price: property.pricePerNight,
        selected: true,
      );
    }
    return (normal: normalIcons, selected: selectedIcons);
  }

  void loadMoreSheetItems() {
    if (!state.hasMoreSheetItems) return;
    final int newCount = (state.visibleSheetCount + _sheetPageSize).clamp(
      0,
      state.properties.length,
    );
    emit(state.copyWith(visibleSheetCount: newCount));
  }

  void selectProperty(String id) {
    if (state.selectedpropertyId == id) {
      emit(state.copyWith(clearSelection: true));
    } else {
      emit(state.copyWith(selectedpropertyId: id));
    }
  }

  void clearSelection() {
    emit(state.copyWith(clearSelection: true));
  }
}
