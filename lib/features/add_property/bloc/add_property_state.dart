part of 'add_property_cubit.dart';

class AddPropertyState extends Equatable {
  final int currentStep;
  final AddPropertyFormModel formData;
  final bool isSubmitting;
  final String? errorMessage;
  final bool isSuccess;

  const AddPropertyState({
    this.currentStep = 0,
    this.formData = const AddPropertyFormModel(),
    this.isSubmitting = false,
    this.errorMessage,
    this.isSuccess = false,
  });

  // ---------- Step validation ----------
  bool get isStep1Valid =>
      formData.propertyCategory != null &&
      formData.placeType != null &&
      formData.title.trim().length >= 10 &&
      formData.title.trim().length <= 80 &&
      formData.description.trim().length >= 50 &&
      formData.description.trim().length <= 1000;

  bool get isStep2Valid {
    final city = formData.city;
    final area = formData.area;
    if (city == null || area == null || area.isEmpty) return false;

    final validAreasForCity = kCityAreas[city] ?? [];
    if (!validAreasForCity.contains(area)) return false;

    return formData.streetAddress.trim().length >= 5 &&
        formData.streetAddress.trim().length <= 200 &&
        formData.mapLocation != null;
  }

  bool get isStep3Valid =>
      formData.maximumGuests >= 1 &&
      formData.bedrooms >= 0 &&
      formData.bathrooms >= 0 &&
      formData.bathrooms <= 20 &&
      formData.amenities.isNotEmpty &&
      formData.propertySize! >= 0;

  bool get isStep4Valid =>
      formData.imagePaths.length >= 5 && formData.imagePaths.length <= 30;

  bool get isStep5Valid =>
      (formData.minimumStay ?? 0) >= 1 &&
      (formData.minimumStay ?? 0) <= 365 &&
      (formData.maximumStay == null ||
          formData.maximumStay! >= (formData.minimumStay ?? 0)) &&
      (formData.pricePerNight ?? 0) > 0 &&
      formData.documentPaths.isNotEmpty &&
      formData.documentPaths.length <= 2;

  bool get canGoNext {
    switch (currentStep) {
      case 0:
        return isStep1Valid;
      case 1:
        return isStep2Valid;
      case 2:
        return isStep3Valid;
      case 3:
        return isStep4Valid;
      case 4:
        return isStep5Valid;
      default:
        return false;
    }
  }

  bool get isLastStep => currentStep == 4;
  bool get isFirstStep => currentStep == 0;

  AddPropertyState copyWith({
    int? currentStep,
    AddPropertyFormModel? formData,
    bool? isSubmitting,
    String? errorMessage,
    bool? isSuccess,
  }) {
    return AddPropertyState(
      currentStep: currentStep ?? this.currentStep,
      formData: formData ?? this.formData,
      isSubmitting: isSubmitting ?? this.isSubmitting,
      errorMessage: errorMessage,
      isSuccess: isSuccess ?? this.isSuccess,
    );
  }

  @override
  List<Object?> get props => [
    currentStep,
    formData,
    isSubmitting,
    errorMessage,
    isSuccess,
  ];
}
