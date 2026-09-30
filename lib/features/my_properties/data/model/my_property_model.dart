import 'package:ewan/features/home/data/models/properties_model.dart';
import 'package:ewan/features/add_property/data/models/add_property_form_model.dart';

class MyPropertyModel {
  const MyPropertyModel({
    required this.id,
    required this.title,
    required this.imageUrl,
    required this.status,
    required this.isDraft,
    this.cityName,
    this.areaName,
    this.rejectionReason,
    this.categoryName,
    this.placeTypeName,
    this.pricePerNight,
    this.fullProperty,
  });

  final String id;
  final String title;
  final String? imageUrl;
  final PropertyStatus status;
  final bool isDraft;
  final String? cityName;
  final String? areaName;
  final String? rejectionReason;
  final String? categoryName;
  final String? placeTypeName;
  final double? pricePerNight;
  final PropertiesModel? fullProperty;

  factory MyPropertyModel.fromProperty(PropertiesModel p) {
    final String? cover = p.images.isEmpty
        ? null
        : p.images
              .firstWhere(
                (dynamic img) => img.isCover == true,
                orElse: () => p.images.first,
              )
              .image;

    return MyPropertyModel(
      id: p.id,
      title: p.title,
      imageUrl: cover,
      status: p.status,
      isDraft: false,
      cityName: p.city.name,
      areaName: p.area.name,
      rejectionReason: p.rejectionReason,
      categoryName: p.category.name,
      placeTypeName: p.placeType.name,
      pricePerNight: p.pricePerNight,
      fullProperty: p,
    );
  }

  factory MyPropertyModel.fromDraft(AddPropertyFormModel d) {
    return MyPropertyModel(
      id: d.id ?? '',
      title: d.title.trim().isEmpty ? 'Untitled Draft' : d.title,
      imageUrl: d.uploadedImages.isNotEmpty ? d.uploadedImages.first.url : null,
      status: d.status,
      isDraft: true,
      cityName: d.city?.name,
      areaName: d.area?.name,
      rejectionReason: null,
      categoryName: d.propertyCategory?.name,
      placeTypeName: d.placeType?.name,
      pricePerNight: null,
      fullProperty: null,
    );
  }
}
