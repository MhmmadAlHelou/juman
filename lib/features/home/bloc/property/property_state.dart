part of 'property_cubit.dart';

// @freezed
// abstract class PropertyState with _$PropertyState {
//   const factory PropertyState.initial() = _Initial;
// }
class PropertyState extends Equatable {
  final List<PropertiesModel> properties;
  final String? selectedpropertyId;
  final bool isLoading;
  final Map<String, BitmapDescriptor> normalMarkerIcons;
  final Map<String, BitmapDescriptor> selectedMarkerIcons;

  const PropertyState({
    this.properties = const [],
    this.selectedpropertyId,
    this.isLoading = true,
    this.normalMarkerIcons = const {},
    this.selectedMarkerIcons = const {},
  });

  PropertiesModel? get selectedListing {
    if (selectedpropertyId == null) return null;
    try {
      return properties.firstWhere((l) => l.id == selectedpropertyId);
    } catch (_) {
      return null;
    }
  }

  PropertyState copyWith({
    List<PropertiesModel>? properties,
    String? selectedpropertyId,
    bool clearSelection = false,
    bool? isLoading,
    Map<String, BitmapDescriptor>? normalMarkerIcons,
    Map<String, BitmapDescriptor>? selectedMarkerIcons,
  }) {
    return PropertyState(
      properties: properties ?? this.properties,
      selectedpropertyId: clearSelection
          ? null
          : (selectedpropertyId ?? this.selectedpropertyId),
      isLoading: isLoading ?? this.isLoading,
      normalMarkerIcons: normalMarkerIcons ?? this.normalMarkerIcons,
      selectedMarkerIcons: selectedMarkerIcons ?? this.selectedMarkerIcons,
    );
  }

  @override
  List<Object?> get props => [
    properties,
    selectedpropertyId,
    isLoading,
    normalMarkerIcons.length,
    selectedMarkerIcons.length,
  ];
}
