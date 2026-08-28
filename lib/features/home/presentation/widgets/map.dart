import 'package:ewan/core/core.dart';
import 'package:ewan/features/home/bloc/property/property_cubit.dart';
import 'package:ewan/features/home/presentation/widgets/card_item.dart';
import 'package:ewan/features/home/presentation/widgets/property_detail.dart';
import 'package:flutter/material.dart';

class MyMap extends StatelessWidget {
  const MyMap({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PropertyCubit, PropertyState>(
      builder: (context, state) {
        if (state.isLoading) {
          return const Center(child: CircularProgressIndicator());
        }

        final markers = state.properties.map((listing) {
          final isSelected = listing.id == state.selectedpropertyId;
          final icon = isSelected
              ? state.selectedMarkerIcons[listing.id]!
              : state.normalMarkerIcons[listing.id]!;

          return Marker(
            markerId: MarkerId(listing.id),
            position: LatLng(listing.latitude!, listing.longitude!),
            icon: icon,
            onTap: () =>
                context.read<PropertyCubit>().selectProperty(listing.id!),
          );
        }).toSet();

        final selected = state.selectedListing;

        return Stack(
          children: [
            RepaintBoundary(
              child: GoogleMap(
                initialCameraPosition: CameraPosition(
                  target: LatLng(33.5138, 36.2765),
                  zoom: 12,
                ),
                markers: markers,
                onTap: (LatLng position) {
                  context.read<PropertyCubit>().clearSelection();
                },
                // onMapCreated: (controller) => _mapController = controller,
                myLocationEnabled: true,
                myLocationButtonEnabled: false,
                zoomControlsEnabled: false,
              ),
            ),

            if (selected != null)
              Positioned(
                left: 16,
                right: 16,
                bottom: 5,
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Material(
                      elevation: 6,
                      borderRadius: BorderRadius.circular(14),
                      color: Palette.white,
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: PropertyCard(
                          property: selected,
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) =>
                                    PropertyDetailPage(property: selected),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                    Positioned(
                      top: -6,
                      right: -6,
                      child: Material(
                        color: Palette.white,
                        shape: const CircleBorder(),
                        elevation: 3,
                        child: InkWell(
                          customBorder: const CircleBorder(),
                          onTap: () =>
                              context.read<PropertyCubit>().clearSelection(),
                          child: const Padding(
                            padding: EdgeInsets.all(6),
                            child: Icon(Icons.close, size: 18),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
          ],
        );
      },
    );
  }
}
