import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:ewan/features/home/data/models/properties_model.dart';

import '../../../../core/core.dart';

class PropertyDetailPage extends StatefulWidget {
  final PropertiesModel property;

  const PropertyDetailPage({super.key, required this.property});

  @override
  State<PropertyDetailPage> createState() => _PropertyDetailPageState();
}

class _PropertyDetailPageState extends State<PropertyDetailPage> {
  final PageController _pageController = PageController();
  int _currentImage = 0;
  bool _isFavorite = false;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  double? get _lat {
    final v =
        widget.property.mapLocation['lat'] ??
        widget.property.mapLocation['latitude'];
    return v == null ? null : (v as num).toDouble();
  }

  double? get _lng {
    final v =
        widget.property.mapLocation['lng'] ??
        widget.property.mapLocation['longitude'];
    return v == null ? null : (v as num).toDouble();
  }

  @override
  Widget build(BuildContext context) {
    final p = widget.property;

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          // ---------- معرض الصور ----------
          SliverAppBar(
            pinned: false,
            expandedHeight: 320,
            backgroundColor: Palette.white,
            leading: Padding(
              padding: const EdgeInsets.all(8),
              child: _RoundIconButton(
                icon: Icons.arrow_back,
                onTap: () => Navigator.pop(context),
              ),
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.all(8),
                child: _RoundIconButton(
                  icon: Icons.share_outlined,
                  onTap: () {},
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8),
                child: _RoundIconButton(
                  icon: _isFavorite ? Icons.favorite : Icons.favorite_border,
                  iconColor: _isFavorite ? Palette.red : Palette.black,
                  onTap: () => setState(() => _isFavorite = !_isFavorite),
                ),
              ),
            ],
            flexibleSpace: FlexibleSpaceBar(
              background: RepaintBoundary(
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    PageView.builder(
                      controller: _pageController,
                      itemCount: p.images.length,
                      onPageChanged: (i) => setState(() => _currentImage = i),
                      itemBuilder: (context, index) {
                        return Image.network(
                          p.images[index],
                          fit: BoxFit.cover,
                        );
                      },
                    ),
                    if (p.images.length > 1)
                      Positioned(
                        bottom: 12,
                        left: 0,
                        right: 0,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: List.generate(p.images.length, (i) {
                            return AnimatedContainer(
                              duration: const Duration(milliseconds: 200),
                              margin: const EdgeInsets.symmetric(horizontal: 3),
                              width: _currentImage == i ? 8 : 6,
                              height: _currentImage == i ? 8 : 6,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: _currentImage == i
                                    ? Palette.white
                                    : Palette.semiGray,
                              ),
                            );
                          }),
                        ),
                      ),
                    Positioned(
                      bottom: 12,
                      right: 12,
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 8,
                          vertical: 3,
                        ),
                        decoration: BoxDecoration(
                          color: Palette.black.withValues(alpha: 0.54),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text(
                          '${_currentImage + 1} / ${p.images.length}',
                          style: const TextStyle(
                            color: Palette.white,
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),

          // ---------- محتوى الصفحة ----------
          SliverToBoxAdapter(
            child: Container(
              padding: const EdgeInsets.fromLTRB(16, 32, 16, 100),
              decoration: BoxDecoration(
                color: Palette.white,
                borderRadius: const BorderRadius.vertical(
                  top: Radius.circular(20),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    p.title,
                    style: const TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 6),
                  Text(
                    '${p.placeType.label} in ${p.propertyCategory.label}',
                    style: TextStyle(fontSize: 15, color: Palette.darkGray),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    '${p.maximumGuests} guests · ${p.bedrooms} bedrooms · ${p.bathrooms} bathrooms'
                    '${p.propertySize != null ? ' · ${p.propertySize!.toStringAsFixed(0)} m²' : ''}',
                    style: TextStyle(fontSize: 15, color: Palette.darkGray),
                  ),
                  const Divider(height: 32),

                  // ---------- الوصف ----------
                  const Text(
                    'About this place',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    p.description,
                    style: const TextStyle(fontSize: 15, height: 1.4),
                  ),
                  const Divider(height: 32),

                  // ---------- المرافق ----------
                  const Text(
                    'What this place offers',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 12),
                  ...p.amenities.map(
                    (a) => Padding(
                      padding: const EdgeInsets.symmetric(vertical: 6),
                      child: Row(
                        children: [
                          Icon(a.icon, size: 22),
                          const SizedBox(width: 12),
                          Text(a.label, style: const TextStyle(fontSize: 15)),
                        ],
                      ),
                    ),
                  ),
                  const Divider(height: 32),

                  // ---------- الموقع ----------
                  const Text(
                    'Where is the place located',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    '${p.area}${p.streetAddress.isNotEmpty ? '، ${p.streetAddress}' : ''}',
                    style: TextStyle(fontSize: 15, color: Palette.darkGray),
                  ),
                  const SizedBox(height: 12),
                  if (_lat != null && _lng != null)
                    ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: SizedBox(
                        height: 200,
                        child: RepaintBoundary(
                          child: IgnorePointer(
                            child: GoogleMap(
                              initialCameraPosition: CameraPosition(
                                target: LatLng(_lat!, _lng!),
                                zoom: 14,
                              ),
                              markers: {
                                Marker(
                                  markerId: const MarkerId('property'),
                                  position: LatLng(_lat!, _lng!),
                                ),
                              },
                              zoomControlsEnabled: false,
                              myLocationButtonEnabled: false,
                              scrollGesturesEnabled: false,
                              rotateGesturesEnabled: false,
                              tiltGesturesEnabled: false,
                              zoomGesturesEnabled: false,
                            ),
                          ),
                        ),
                      ),
                    ),
                  const Divider(height: 32),

                  // ---------- تفاصيل الإقامة ----------
                  const Text(
                    'Accommodation details',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Minimum stay: ${p.minimumStay} nights'
                    '${p.maximumStay != null && p.maximumStay! > 0 ? ' · Maximum stay: ${p.maximumStay} nights' : ''}',
                    style: const TextStyle(fontSize: 15),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),

      // ---------- شريط السعر السفلي ----------
      bottomNavigationBar: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          decoration: BoxDecoration(
            color: Palette.white,
            boxShadow: [
              BoxShadow(
                color: Palette.black.withValues(alpha: 0.08),
                blurRadius: 8,
                offset: const Offset(0, -2),
              ),
            ],
          ),
          child: Row(
            children: [
              Expanded(
                child: RichText(
                  text: TextSpan(
                    style: const TextStyle(color: Palette.black, fontSize: 16),
                    children: [
                      TextSpan(
                        text: '${p.price.toStringAsFixed(2)} ',
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      const TextSpan(text: 'SYP/ For the night'),
                    ],
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  // TODO: The logic of booking or contacting the owner
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Palette.red,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 28,
                    vertical: 14,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: const Text(
                  'Book Now',
                  style: TextStyle(color: Palette.white, fontSize: 16),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/// زر دائري صغير (رجوع / مشاركة / مفضلة) فوق الصور
class _RoundIconButton extends StatelessWidget {
  final IconData icon;
  final Color iconColor;
  final VoidCallback onTap;

  const _RoundIconButton({
    required this.icon,
    required this.onTap,
    this.iconColor = Palette.black,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      customBorder: const CircleBorder(),
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: const BoxDecoration(
          color: Palette.white,
          shape: BoxShape.circle,
        ),
        child: Icon(icon, size: 20, color: iconColor),
      ),
    );
  }
}
