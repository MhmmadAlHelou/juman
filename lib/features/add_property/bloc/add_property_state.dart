part of 'add_property_cubit.dart';

enum AddPropertyStep { basicInfo, location, details, images, pricingAndDocs }

class AddPropertyState extends Equatable {
  const AddPropertyState({
    this.currentStep = AddPropertyStep.basicInfo,
    this.formData = const AddPropertyFormModel(),
    this.isInitializing = true,
    this.isSavingStep = false,
    this.isSubmitting = false,
    this.isUploadingImage = false,
    this.isUploadingDocument = false,
    this.errorMessage,
    this.categories = const <PropertyCategoryModel>[],
    this.placeTypes = const <PlaceTypeModel>[],
    this.cities = const <CityModel>[],
    this.amenities = const <AmenityModel>[],
    this.isLoadingLocationsData = false,
  });

  final AddPropertyStep currentStep;
  final AddPropertyFormModel formData;

  final bool isInitializing;
  final bool isSavingStep; // PATCH = Next
  final bool isSubmitting; // POST = submit
  final bool isUploadingImage;
  final bool isUploadingDocument;
  final String? errorMessage;

  // Reference data loaded from LocationsRepository
  final List<PropertyCategoryModel> categories;
  final List<PlaceTypeModel> placeTypes;
  final List<CityModel> cities;
  final List<AmenityModel> amenities;
  final bool isLoadingLocationsData;

  // ----  (Step Validation) ----

  bool get isBasicInfoValid =>
      formData.propertyCategory != null &&
      formData.placeType != null &&
      formData.title.trim().length >= 10 &&
      formData.title.trim().length <= 80 &&
      formData.description.trim().length >= 50 &&
      formData.description.trim().length <= 1000;

  bool get isLocationValid =>
      formData.city != null &&
      formData.area != null &&
      formData.streetAddress.trim().length >= 5 &&
      formData.streetAddress.trim().length <= 200 &&
      formData.latitude != null &&
      formData.longitude != null;

  bool get isDetailsValid =>
      (formData.propertySize == null || formData.propertySize! > 0) &&
      formData.maximumGuests >= 1 &&
      formData.bedrooms >= 0 &&
      formData.bathrooms >= 0 &&
      formData.bathrooms <= 20 &&
      formData.amenities.isNotEmpty;

  bool get isImagesValid =>
      formData.uploadedImages.length >= 5 &&
      formData.uploadedImages.length <= 30;

  bool get isPricingAndDocsValid =>
      (formData.minimumStay ?? 0) >= 1 &&
      (formData.minimumStay ?? 0) <= 365 &&
      (formData.maximumStay == null ||
          formData.maximumStay! >= (formData.minimumStay ?? 0)) &&
      formData.pricePerNight != null &&
      formData.pricePerNight! > 0 &&
      formData.uploadedDocuments.isNotEmpty &&
      formData.uploadedDocuments.length <= 2;

  bool get isCurrentStepValid {
    switch (currentStep) {
      case AddPropertyStep.basicInfo:
        return isBasicInfoValid;
      case AddPropertyStep.location:
        return isLocationValid;
      case AddPropertyStep.details:
        return isDetailsValid;
      case AddPropertyStep.images:
        return isImagesValid;
      case AddPropertyStep.pricingAndDocs:
        return isPricingAndDocsValid;
    }
  }

  bool get isLastStep => currentStep == AddPropertyStep.pricingAndDocs;

  List<AreaModel> get areasForSelectedCity =>
      formData.city?.areas ?? const <AreaModel>[];

  AddPropertyState copyWith({
    AddPropertyStep? currentStep,
    AddPropertyFormModel? formData,
    bool? isInitializing,
    bool? isSavingStep,
    bool? isSubmitting,
    bool? isUploadingImage,
    bool? isUploadingDocument,
    String? errorMessage,
    bool clearError = false,
    List<PropertyCategoryModel>? categories,
    List<PlaceTypeModel>? placeTypes,
    List<CityModel>? cities,
    List<AmenityModel>? amenities,
    bool? isLoadingLocationsData,
  }) {
    return AddPropertyState(
      currentStep: currentStep ?? this.currentStep,
      formData: formData ?? this.formData,
      isInitializing: isInitializing ?? this.isInitializing,
      isSavingStep: isSavingStep ?? this.isSavingStep,
      isSubmitting: isSubmitting ?? this.isSubmitting,
      isUploadingImage: isUploadingImage ?? this.isUploadingImage,
      isUploadingDocument: isUploadingDocument ?? this.isUploadingDocument,
      errorMessage: clearError ? null : (errorMessage ?? this.errorMessage),
      categories: categories ?? this.categories,
      placeTypes: placeTypes ?? this.placeTypes,
      cities: cities ?? this.cities,
      amenities: amenities ?? this.amenities,
      isLoadingLocationsData:
          isLoadingLocationsData ?? this.isLoadingLocationsData,
    );
  }

  @override
  List<Object?> get props => <Object?>[
    currentStep,
    formData,
    isInitializing,
    isSavingStep,
    isSubmitting,
    isUploadingImage,
    isUploadingDocument,
    errorMessage,
    categories,
    placeTypes,
    cities,
    amenities,
    isLoadingLocationsData,
  ];
}
