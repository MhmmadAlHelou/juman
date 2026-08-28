import 'dart:io';

import 'package:equatable/equatable.dart';
import 'package:ewan/core/core.dart';
import 'package:ewan/features/add_property/data/add_property_repository.dart';
import 'package:ewan/features/add_property/data/locations_repository.dart';
import 'package:ewan/features/add_property/data/models/add_property_form_model.dart';
import 'package:ewan/features/add_property/data/models/uploaded_file_model.dart';
import 'package:ewan/features/add_property/data/services/file_upload_service.dart';
import 'package:ewan/features/home/data/models/properties_model.dart';

part 'add_property_state.dart';

class AddPropertyCubit extends Cubit<AddPropertyState> {
  AddPropertyCubit({
    required AddPropertyRepository repository,
    required LocationsRepository locationsRepository,
    required FileUploadService uploadService,
  }) : _repository = repository,
       _locationsRepository = locationsRepository,
       _uploadService = uploadService,
       super(const AddPropertyState());

  final AddPropertyRepository _repository;
  final LocationsRepository _locationsRepository;
  final FileUploadService _uploadService;

  /// يُستدعى عند فتح AddPropertyPage - يقرر resume أو إنشاء draft جديد
  Future<void> initWizard() async {
    emit(state.copyWith(isInitializing: true, clearError: true));

    final Future<void> locationsFuture = _loadLocationsData();

    AddPropertyFormModel? existingDraft;
    try {
      existingDraft = await _repository.getMyDraft();
    } on BackendException catch (e) {
      if (e.statusCode == 401) {
        await locationsFuture;
        emit(
          state.copyWith(
            isInitializing: false,
            errorMessage: 'You must log in first to add a property',
          ),
        );
        return;
      }
      existingDraft =
          null; // فشل مؤقت في جلب draft قديم - نكمل بإنشاء واحد جديد
    }

    try {
      final AddPropertyFormModel formData =
          existingDraft ?? await _repository.createDraft();

      await locationsFuture;

      emit(
        state.copyWith(
          formData: formData,
          isInitializing: false,
          currentStep: _stepFromFormData(formData),
        ),
      );
    } on BackendException catch (e) {
      await locationsFuture;
      emit(state.copyWith(isInitializing: false, errorMessage: e.message));
    } catch (e) {
      // أي خطأ غير متوقع (زي parsing/type errors) - ما نسيبش الواجهة تفتح فاضية بصمت
      await locationsFuture;
      emit(
        state.copyWith(
          isInitializing: false,
          errorMessage:
              'An unexpected error occurred while preparing the model.',
        ),
      );
    }
  }

  Future<void> _loadLocationsData() async {
    emit(state.copyWith(isLoadingLocationsData: true));
    try {
      final List<PropertyCategoryModel> categories = await _locationsRepository
          .getCategories();
      final List<PlaceTypeModel> placeTypes = await _locationsRepository
          .getPlaceTypes();
      final List<CityModel> cities = await _locationsRepository.getCities();
      final List<AmenityModel> amenities = await _locationsRepository
          .getAmenityItems();

      emit(
        state.copyWith(
          categories: categories,
          placeTypes: placeTypes,
          cities: cities,
          amenities: amenities,
          isLoadingLocationsData: false,
        ),
      );
    } on BackendException catch (e) {
      emit(
        state.copyWith(isLoadingLocationsData: false, errorMessage: e.message),
      );
    }
  }

  // عند resume لـ draft قديم، نحدد آخر خطوة وصلها المستخدم بناءً على اكتمال الحقول
  AddPropertyStep _stepFromFormData(AddPropertyFormModel f) {
    if (f.propertyCategory == null || f.title.isEmpty) {
      return AddPropertyStep.basicInfo;
    }
    if (f.city == null || f.area == null) return AddPropertyStep.location;
    if (f.amenities.isEmpty) return AddPropertyStep.details;
    if (f.uploadedImageUris.isEmpty) return AddPropertyStep.images;
    return AddPropertyStep.pricingAndDocs;
  }

  // ---- تحديثات محلية فورية (بدون نداء API) ----

  void updateBasicInfo({
    PropertyCategoryModel? category,
    PlaceTypeModel? placeType,
    String? title,
    String? description,
  }) {
    emit(
      state.copyWith(
        formData: state.formData.copyWith(
          propertyCategory: category,
          placeType: placeType,
          title: title,
          description: description,
        ),
        clearError: true,
      ),
    );
  }

  void updateCity(CityModel city) {
    // تغيير المدينة يفرغ المنطقة المختارة سابقاً - كانت تابعة لمدينة تانية
    emit(
      state.copyWith(
        formData: state.formData.copyWith(city: city, area: null),
        clearError: true,
      ),
    );
  }

  void updateArea(AreaModel area) {
    emit(state.copyWith(formData: state.formData.copyWith(area: area)));
  }

  void updateLocationDetails({
    String? streetAddress,
    double? latitude,
    double? longitude,
  }) {
    emit(
      state.copyWith(
        formData: state.formData.copyWith(
          streetAddress: streetAddress,
          latitude: latitude,
          longitude: longitude,
        ),
      ),
    );
  }

  void updatePropertyDetails({
    int? size,
    int? maxGuests,
    int? bedrooms,
    int? bathrooms,
  }) {
    emit(
      state.copyWith(
        formData: state.formData.copyWith(
          propertySize: size,
          maximumGuests: maxGuests,
          bedrooms: bedrooms,
          bathrooms: bathrooms,
        ),
      ),
    );
  }

  void updatePricing({int? minStay, int? maxStay, double? pricePerNight}) {
    emit(
      state.copyWith(
        formData: state.formData.copyWith(
          minimumStay: minStay,
          maximumStay: maxStay,
          pricePerNight: pricePerNight,
        ),
      ),
    );
  }

  void toggleAmenity(AmenityModel amenity) {
    final List<AmenityModel> current = List<AmenityModel>.from(
      state.formData.amenities,
    );
    final bool exists = current.any((AmenityModel a) => a.id == amenity.id);
    if (exists) {
      current.removeWhere((AmenityModel a) => a.id == amenity.id);
    } else {
      current.add(amenity);
    }
    emit(state.copyWith(formData: state.formData.copyWith(amenities: current)));
  }

  // ---- رفع الصور - منفصل تماماً عن الـ PATCH ----

  Future<void> pickAndUploadImage(File imageFile) async {
    emit(state.copyWith(isUploadingImage: true, clearError: true));
    try {
      final UploadedFileModel uploaded = await _uploadService.uploadFiles(
        imageFile,
      );
      final List<String> updated = List<String>.from(
        state.formData.uploadedImageUris,
      )..add(uploaded.file);
      emit(
        state.copyWith(
          formData: state.formData.copyWith(uploadedImageUris: updated),
          isUploadingImage: false,
        ),
      );
    } on BackendException catch (e) {
      emit(state.copyWith(isUploadingImage: false, errorMessage: e.message));
    }
  }

  void removeUploadedImage(String imageUri) {
    final List<String> updated = List<String>.from(
      state.formData.uploadedImageUris,
    )..remove(imageUri);
    emit(
      state.copyWith(
        formData: state.formData.copyWith(uploadedImageUris: updated),
      ),
    );
  }

  // ---- رفع المستندات (PDF) - نفس منطق الصور، مسار منفصل ----

  Future<void> pickAndUploadDocument(File documentFile) async {
    emit(state.copyWith(isUploadingDocument: true, clearError: true));
    try {
      final UploadedFileModel uploaded = await _uploadService.uploadFiles(
        documentFile,
      );
      final List<String> updated = List<String>.from(
        state.formData.uploadedDocumentUris,
      )..add(uploaded.file);
      emit(
        state.copyWith(
          formData: state.formData.copyWith(uploadedDocumentUris: updated),
          isUploadingDocument: false,
        ),
      );
    } on BackendException catch (e) {
      emit(state.copyWith(isUploadingDocument: false, errorMessage: e.message));
    }
  }

  void removeUploadedDocument(String documentUri) {
    final List<String> updated = List<String>.from(
      state.formData.uploadedDocumentUris,
    )..remove(documentUri);
    emit(
      state.copyWith(
        formData: state.formData.copyWith(uploadedDocumentUris: updated),
      ),
    );
  }

  // ---- التنقل بين الخطوات - هون يصير الـ PATCH فعلياً ----

  Future<void> goToNextStep() async {
    print(
      '${state.formData.id} llllllllllllllllllllllllllllllfffffffffffffffffffffffffffffffffffffffff',
    );
    print(
      '${state.isCurrentStepValid} llllllllllllllllllllllllllllllfffffffffffffffffffffffffffffffffffffffff',
    );
    if (!state.isCurrentStepValid || state.formData.id == null) return;

    emit(state.copyWith(isSavingStep: true, clearError: true));

    final Map<String, dynamic> payload = _payloadForCurrentStep();

    try {
      final AddPropertyFormModel updated = await _repository.patchStep(
        state.formData.id!,
        payload,
      );

      if (state.isLastStep) {
        emit(state.copyWith(formData: updated, isSavingStep: false));
        return; // آخر خطوة - الانتقال الفعلي يصير بـ submit() من الـ UI
      }

      emit(
        state.copyWith(
          formData: updated,
          isSavingStep: false,
          currentStep: AddPropertyStep.values[state.currentStep.index + 1],
        ),
      );
    } on BackendException catch (e) {
      emit(state.copyWith(isSavingStep: false, errorMessage: e.message));
    }
  }

  Map<String, dynamic> _payloadForCurrentStep() {
    switch (state.currentStep) {
      case AddPropertyStep.basicInfo:
        return state.formData.toBasicInfoJson();
      case AddPropertyStep.location:
        return state.formData.toLocationJson();
      case AddPropertyStep.details:
        return state.formData.toDetailsJson();
      case AddPropertyStep.images:
        return state.formData.toImagesJson();
      case AddPropertyStep.pricingAndDocs:
        return state.formData.toPricingJson();
    }
  }

  void goToPreviousStep() {
    if (state.currentStep == AddPropertyStep.basicInfo) return;
    emit(
      state.copyWith(
        currentStep: AddPropertyStep.values[state.currentStep.index - 1],
        clearError: true,
      ),
    );
  }

  // ---- الإنهاء ----

  Future<bool> submit() async {
    if (!state.isPricingAndDocsValid || state.formData.id == null) {
      return false;
    }

    emit(state.copyWith(isSubmitting: true, clearError: true));
    try {
      final AddPropertyFormModel submitted = await _repository.submitProperty(
        state.formData.id!,
      );

      emit(state.copyWith(formData: submitted, isSubmitting: false));
      return true;
    } on BackendException catch (e) {
      emit(state.copyWith(isSubmitting: false, errorMessage: e.message));
      return false;
    }
  }
}
