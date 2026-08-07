import 'package:ewan/core/core.dart';
import 'package:ewan/features/home/data/models/models.dart';
// import 'package:ewan/features/home/presentation/helper/markers/house_marker_generator.dart';
import 'package:flutter/material.dart';
// import 'package:ewan/features/home/data/models/properties_model.dart';

class PropertyLocationMapPage extends StatelessWidget {
  final PropertiesModel property;
  final BitmapDescriptor? houseMarkerIcon;
  const PropertyLocationMapPage({
    super.key,
    required this.property,
    BitmapDescriptor? houseMarkerIcon,
  }) : houseMarkerIcon = houseMarkerIcon;

  @override
  Widget build(BuildContext context) {
    final location = property.latLng;

    return Scaffold(
      body: Stack(
        children: [
          GoogleMap(
            initialCameraPosition: CameraPosition(target: location, zoom: 15),
            markers: {
              Marker(
                markerId: const MarkerId('property'),
                position: location,
                icon: houseMarkerIcon ?? BitmapDescriptor.defaultMarker,
              ),
            },
            myLocationButtonEnabled: false,
            zoomControlsEnabled: false,
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Align(
                alignment: Alignment.topRight,
                child: CircleAvatar(
                  backgroundColor: Palette.white,
                  child: IconButton(
                    icon: const Icon(Icons.close, color: Palette.black),
                    onPressed: () => Navigator.pop(context),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
