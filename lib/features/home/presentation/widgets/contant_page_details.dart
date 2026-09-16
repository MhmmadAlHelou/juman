import 'package:ewan/core/core.dart';
import 'package:ewan/features/home/data/data.dart';
import 'package:ewan/features/home/presentation/helper/markers/house_marker_generator.dart';
import 'package:ewan/features/home/presentation/widgets/amenities_section.dart';
import 'package:ewan/features/home/presentation/widgets/expandable_text.dart';
import 'package:ewan/features/home/presentation/widgets/property_location_map.dart';
import 'package:flutter/material.dart';

class ContantPageDetails extends StatefulWidget {
  const ContantPageDetails({super.key, required this.property});
  final PropertiesModel property;

  @override
  State<ContantPageDetails> createState() => _ContantPageDetailsState();
}

class _ContantPageDetailsState extends State<ContantPageDetails> {
  BitmapDescriptor? houseMarkerIcon;

  Future<void> _loadMarkerIcon() async {
    final icon = await HouseMarkerGenerator.generate();
    setState(() => houseMarkerIcon = icon);
  }

  @override
  void initState() {
    super.initState();
    _loadMarkerIcon();
  }

  double? get _lat {
    final v = widget.property.latitude;
    return v == null ? null : (v as num).toDouble();
  }

  double? get _lng {
    final v = widget.property.longitude;
    return v == null ? null : (v as num).toDouble();
  }

  @override
  Widget build(BuildContext context) {
    final p = widget.property;

    return SliverToBoxAdapter(
      child: Container(
        padding: const EdgeInsets.fromLTRB(32, 16, 32, 100),
        decoration: BoxDecoration(color: Palette.backgroundColor),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              p.title,
              style: const TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.w700,
                fontFamily: FontFamily.alexandria,
                color: Palette.fontColor,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              '${p.placeType.name} ${LocaleKeys.innn.tr()} ${p.category.name}',
              style: TextStyle(
                fontSize: 16,
                color: Palette.fontColor.withValues(alpha: 0.7),
                fontFamily: FontFamily.alexandria,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              '${p.maxGuests} ${LocaleKeys.guests.tr()} · ${p.bedrooms} ${LocaleKeys.bedrooms.tr()} · ${p.bathrooms} ${LocaleKeys.bathrooms.tr()}'
              ' . ${p.size} ${LocaleKeys.m.tr()}',
              style: TextStyle(
                fontSize: 15,
                color: Palette.fontColor.withValues(alpha: 0.7),
                fontFamily: FontFamily.alexandria,
              ),
            ),

            const Divider(height: 64, color: Color.fromRGBO(232, 225, 210, 1)),

            // ---------- Accommodation Details ----------
            Text(
              LocaleKeys.accommodationDetails.tr(),
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w700,
                fontFamily: FontFamily.alexandria,
                color: Palette.fontColor,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              '${LocaleKeys.minimumStay.tr()} ${p.minStay} ${LocaleKeys.nights.tr()}'
              '${p.maxStay > 0 ? ' · ${LocaleKeys.maximumStay.tr()} ${p.maxStay} ${LocaleKeys.nights.tr()}' : ''}',
              style: TextStyle(
                fontSize: 16,
                color: Palette.fontColor.withValues(alpha: 0.7),
                fontWeight: FontWeight.w400,
                fontFamily: FontFamily.alexandria,
              ),
            ),

            const Divider(height: 64, color: Color.fromRGBO(232, 225, 210, 1)),

            // ---------- Description ----------
            Text(
              LocaleKeys.aboutThisPlace.tr(),
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w700,
                fontFamily: FontFamily.alexandria,
                color: Palette.fontColor,
              ),
            ),
            const SizedBox(height: 16),
            ExpandableText(
              text: p.description,
              style: TextStyle(
                fontSize: 16,
                height: 1.4,
                fontWeight: FontWeight.w400,
                fontFamily: FontFamily.alexandria,
                color: Palette.fontColor.withValues(alpha: 0.6),
              ),
              linkStyle: TextStyle(
                fontSize: 14,
                height: 1.4,
                fontWeight: FontWeight.w700,
                decoration: TextDecoration.underline,
                fontFamily: FontFamily.alexandria,
                color: Palette.fontColor,
              ),
              maxLines: 4,
              showMoreText: LocaleKeys.showMore.tr(),
              showLessText: LocaleKeys.showLess.tr(),
            ),

            const Divider(height: 64, color: Color.fromRGBO(232, 225, 210, 1)),

            // ---------- Amenities ----------
            Text(
              LocaleKeys.whatThisPlaceOffers.tr(),
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w700,
                fontFamily: FontFamily.alexandria,
                color: Palette.fontColor,
              ),
            ),
            const SizedBox(height: 24),

            AmenitiesSection(amenities: p.amenities),

            const Divider(height: 64, color: Color.fromRGBO(232, 225, 210, 1)),

            // ---------- Location ----------
            Text(
              LocaleKeys.whereIsThePlaceLocated.tr(),
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w700,
                fontFamily: FontFamily.alexandria,
                color: Palette.fontColor,
              ),
            ),
            const SizedBox(height: 16),
            Text(
              '${p.area.name}${p.detailedAddress.isNotEmpty ? '، ${p.detailedAddress}' : ''}',
              style: TextStyle(
                fontSize: 16,
                color: Palette.fontColor.withValues(alpha: 0.7),
                fontWeight: FontWeight.w400,
                fontFamily: FontFamily.alexandria,
              ),
            ),
            const SizedBox(height: 16),
            if (_lat != null && _lng != null)
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: SizedBox(
                  height: 200,
                  child: RepaintBoundary(
                    child: GestureDetector(
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => PropertyLocationMapPage(
                            property: p,
                            houseMarkerIcon: houseMarkerIcon,
                          ),
                        ),
                      ),
                      child: AbsorbPointer(
                        child: GoogleMap(
                          initialCameraPosition: CameraPosition(
                            target: LatLng(_lat!, _lng!),
                            zoom: 14,
                          ),
                          markers: {
                            Marker(
                              markerId: const MarkerId('property'),
                              position: LatLng(_lat!, _lng!),
                              icon:
                                  houseMarkerIcon ??
                                  BitmapDescriptor.defaultMarker,
                            ),
                          },
                          zoomControlsEnabled: false,
                          myLocationButtonEnabled: false,
                          scrollGesturesEnabled: false,
                          rotateGesturesEnabled: false,
                          tiltGesturesEnabled: false,
                          zoomGesturesEnabled: false,
                          liteModeEnabled: true,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
