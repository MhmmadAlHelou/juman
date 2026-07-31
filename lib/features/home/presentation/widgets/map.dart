import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MyMap extends StatelessWidget {
  const MyMap({super.key});

  @override
  Widget build(BuildContext context) {
    return GoogleMap(
      initialCameraPosition: CameraPosition(
        target: LatLng(33.5138, 36.2765),
        zoom: 12,
      ),
      // markers: _markers,
      // onMapCreated: (controller) => _mapController = controller,
      myLocationEnabled: true,
      // myLocationButtonEnabled: false, // تصميم زر خاص بك أفضل من الافتراضي
    );
  }
}
