import 'package:equatable/equatable.dart';
import 'package:ewan/core/core.dart';
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

  PropertyCubit(this._repository) : super(const PropertyState());

  Future<void> loadProperties() async {
    emit(state.copyWith(isLoading: true));

    try {
      final propertiesList = await _repository.getListings();

      final normalIcons = <String, BitmapDescriptor>{};
      final selectedIcons = <String, BitmapDescriptor>{};

      for (final property in propertiesList) {
        if (property.id == null) continue; // backup check to avoid null id

        normalIcons[property.id!] = await MarkerBitmapGenerator.generate(
          price: property.price,
          selected: false,
        );
        selectedIcons[property.id!] = await MarkerBitmapGenerator.generate(
          price: property.price,
          selected: true,
        );
      }

      emit(
        state.copyWith(
          properties: propertiesList,
          isLoading: false,
          normalMarkerIcons: normalIcons,
          selectedMarkerIcons: selectedIcons,
        ),
      );
    } catch (e, st) {
      Logger().e('Failed to load properties: $st', error: e);
      emit(state.copyWith(isLoading: false));
    }
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
