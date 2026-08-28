import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:ewan/features/home/data/models/models.dart';

extension PropertiesLocation on PropertiesModel {
  LatLng? get latLng {
    if (!hasValidCoordinates) return null;
    return LatLng(latitude!, longitude!);
  }
}
