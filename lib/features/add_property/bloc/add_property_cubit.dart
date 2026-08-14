import 'package:equatable/equatable.dart';
import 'package:ewan/core/core.dart';
import 'package:ewan/features/add_property/data/constants/city_areas.dart';
import 'package:ewan/features/add_property/data/models/add_property_form_model.dart';
import 'package:ewan/features/add_property/data/services/file_upload_service.dart';
import 'package:ewan/features/home/data/models/properties_model.dart';
import 'package:ewan/features/home/data/properties_repository.dart';

part 'add_property_state.dart';

class AddPropertyCubit extends Cubit<AddPropertyState> {
  final PropertiesRepository _repository;
  final FileUploadService _uploadService;

  AddPropertyCubit({
    required PropertiesRepository repository,
    required FileUploadService uploadService,
  }) : _repository = repository,
       _uploadService = uploadService,
       super(const AddPropertyState());

  // ---------- Navigation ----------
  void nextStep() {
    if (state.canGoNext && !state.isLastStep) {
      emit(state.copyWith(currentStep: state.currentStep + 1));
    }
  }

  void previousStep() {
    if (!state.isFirstStep) {
      emit(state.copyWith(currentStep: state.currentStep - 1));
    }
  }

  // ---------- Step 1 ----------
  void updateCategory(PropertyCategory value) => emit(
    state.copyWith(formData: state.formData.copyWith(propertyCategory: value)),
  );

  void updatePlaceType(PlaceType value) =>
      emit(state.copyWith(formData: state.formData.copyWith(placeType: value)));

  void updateTitle(String value) =>
      emit(state.copyWith(formData: state.formData.copyWith(title: value)));

  void updateDescription(String value) => emit(
    state.copyWith(formData: state.formData.copyWith(description: value)),
  );

  // ---------- Step 2 ----------
  void updateCity(City value) => emit(
    state.copyWith(formData: state.formData.copyWith(city: value, area: null)),
  );

  void updateArea(String value) =>
      emit(state.copyWith(formData: state.formData.copyWith(area: value)));

  void updateStreetAddress(String value) => emit(
    state.copyWith(formData: state.formData.copyWith(streetAddress: value)),
  );

  void updateMapLocation(Map<String, dynamic> value) => emit(
    state.copyWith(formData: state.formData.copyWith(mapLocation: value)),
  );

  // ---------- Step 3 ----------
  void updatePropertySize(double? value) => emit(
    state.copyWith(formData: state.formData.copyWith(propertySize: value)),
  );

  void updateMaxGuests(int value) => emit(
    state.copyWith(formData: state.formData.copyWith(maximumGuests: value)),
  );

  void updateBedrooms(int value) =>
      emit(state.copyWith(formData: state.formData.copyWith(bedrooms: value)));

  void updateBathrooms(int value) =>
      emit(state.copyWith(formData: state.formData.copyWith(bathrooms: value)));

  void toggleAmenity(Amenity amenity) {
    final current = List<Amenity>.from(state.formData.amenities);
    current.contains(amenity) ? current.remove(amenity) : current.add(amenity);
    emit(state.copyWith(formData: state.formData.copyWith(amenities: current)));
  }

  // ---------- Step 4 ----------
  void addImages(List<String> paths) {
    final current = List<String>.from(state.formData.imagePaths)..addAll(paths);
    emit(
      state.copyWith(formData: state.formData.copyWith(imagePaths: current)),
    );
  }

  void removeImage(String path) {
    final current = List<String>.from(state.formData.imagePaths)..remove(path);
    emit(
      state.copyWith(formData: state.formData.copyWith(imagePaths: current)),
    );
  }

  void setCoverImage(String path) {
    final current = List<String>.from(state.formData.imagePaths);
    current.remove(path);
    current.insert(0, path);
    emit(
      state.copyWith(formData: state.formData.copyWith(imagePaths: current)),
    );
  }

  void reorderImages(int oldIndex, int newIndex) {
    final current = List<String>.from(state.formData.imagePaths);
    if (newIndex > oldIndex) newIndex -= 1;
    final item = current.removeAt(oldIndex);
    current.insert(newIndex, item);
    emit(
      state.copyWith(formData: state.formData.copyWith(imagePaths: current)),
    );
  }

  // ---------- Step 5 ----------
  void updateMinStay(int value) => emit(
    state.copyWith(formData: state.formData.copyWith(minimumStay: value)),
  );

  void updateMaxStay(int? value) => emit(
    state.copyWith(formData: state.formData.copyWith(maximumStay: value)),
  );

  void updatePrice(double value) => emit(
    state.copyWith(formData: state.formData.copyWith(pricePerNight: value)),
  );

  void addDocuments(List<String> paths) {
    final current = List<String>.from(state.formData.documentPaths)
      ..addAll(paths);
    if (current.length > 2) return;
    emit(
      state.copyWith(formData: state.formData.copyWith(documentPaths: current)),
    );
  }

  void removeDocument(String path) {
    final current = List<String>.from(state.formData.documentPaths)
      ..remove(path);
    emit(
      state.copyWith(formData: state.formData.copyWith(documentPaths: current)),
    );
  }

  // ---------- Submit ----------
  Future<void> submit() async {
    // Additional protection: We only allow submit if the last step is valid.
    if (!state.canGoNext) return;

    emit(state.copyWith(isSubmitting: true, errorMessage: null));
    try {
      final uploadedImages = await _uploadService.uploadFiles(
        state.formData.imagePaths,
      );
      final uploadedDocs = await _uploadService.uploadFiles(
        state.formData.documentPaths,
      );

      final property = PropertiesModel(
        propertyCategory: state.formData.propertyCategory!,
        placeType: state.formData.placeType!,
        title: state.formData.title,
        description: state.formData.description,
        city: state.formData.city!,
        area: state.formData.area!,
        streetAddress: state.formData.streetAddress,
        mapLocation: state.formData.mapLocation!,
        propertySize: state.formData.propertySize,
        maximumGuests: state.formData.maximumGuests,
        bedrooms: state.formData.bedrooms,
        bathrooms: state.formData.bathrooms,
        amenities: state.formData.amenities,
        images: uploadedImages,
        minimumStay: state.formData.minimumStay!,
        maximumStay: state.formData.maximumStay,
        price: state.formData.pricePerNight!,
        document: uploadedDocs,
      );

      await _repository.addProperty(property);

      // Complete reset: We return to a new elementary state, but with a pass sign.
      emit(const AddPropertyState().copyWith(isSuccess: true));
      // emit(state.copyWith(isSubmitting: false, isSuccess: true));
    } catch (e) {
      Logger().e('Submit error: $e');
      emit(
        state.copyWith(
          isSubmitting: false,
          errorMessage: 'Failed to submit property',
        ),
      );
    }
  }
}
