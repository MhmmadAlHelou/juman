import 'package:ewan/core/core.dart';
import 'package:flutter/material.dart';

class PropertyLocationPickerPage extends StatefulWidget {
  final LatLng? initialLocation;

  const PropertyLocationPickerPage({super.key, this.initialLocation});

  @override
  State<PropertyLocationPickerPage> createState() =>
      _PropertyLocationPickerPageState();
}

class _PropertyLocationPickerPageState
    extends State<PropertyLocationPickerPage> {
  static const _defaultLocation = LatLng(33.5138, 36.2765);

  late LatLng _currentCenter;
  GoogleMapController? _mapController;

  @override
  void initState() {
    super.initState();
    _currentCenter = widget.initialLocation ?? _defaultLocation;
  }

  @override
  void dispose() {
    _mapController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Select Location')),
      body: Stack(
        alignment: Alignment.center,
        children: [
          GoogleMap(
            initialCameraPosition: CameraPosition(
              target: _currentCenter,
              zoom: 15,
            ),
            onMapCreated: (controller) => _mapController = controller,
            onCameraMove: (position) {
              _currentCenter = position.target;
            },
            myLocationButtonEnabled: false,
            zoomControlsEnabled: false,
          ),
          // الدبوس الثابت بمنتصف الشاشة
          IgnorePointer(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 40),
              child: Icon(
                Icons.location_pin,
                size: 48,
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
          ),
          Positioned(
            bottom: 24,
            left: 16,
            right: 16,
            child: SafeArea(
              child: ElevatedButton(
                onPressed: () => Navigator.pop(context, _currentCenter),
                child: const Text('Confirm Location'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
