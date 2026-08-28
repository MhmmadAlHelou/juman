import 'package:ewan/features/home/data/models/properties_model.dart';
import 'package:flutter/material.dart';

import '../../../../core/core.dart';

/// -----------------------------------------------------------------------
/// PropertyCard
/// A single "property" card (image carousel + info)
/// -----------------------------------------------------------------------
class PropertyCard extends StatefulWidget {
  final PropertiesModel property;
  final VoidCallback? onTap;

  const PropertyCard({super.key, required this.property, this.onTap});

  @override
  State<PropertyCard> createState() => _PropertyCardState();
}

class _PropertyCardState extends State<PropertyCard> {
  final PageController _pageController = PageController();
  int _currentPage = 0;
  bool _isFavorite = false;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _goTo(int page) {
    if (page < 0 || page >= widget.property.images.length) return;
    _pageController.animateToPage(
      page,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [_buildCarousel(), const SizedBox(height: 10), _buildInfo()],
      ),
    );
  }

  // ---------------------------------------------------------------------
  // Carousel section
  // ---------------------------------------------------------------------
  Widget _buildCarousel() {
    return AspectRatio(
      aspectRatio: 1, // square, like the screenshot
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Stack(
          fit: StackFit.expand,
          children: [
            // --- Swipeable images ---
            PageView.builder(
              controller: _pageController,
              itemCount: widget.property.images.length,
              onPageChanged: (index) => setState(() => _currentPage = index),
              itemBuilder: (context, index) {
                return Image.network(
                  widget.property.images[index].image,
                  fit: BoxFit.cover,
                  loadingBuilder: (context, child, progress) {
                    if (progress == null) return child;
                    return Container(
                      color: Palette.semiGray,
                      child: const Center(
                        child: CircularProgressIndicator(strokeWidth: 2),
                      ),
                    );
                  },
                  errorBuilder: (context, error, stackTrace) => Container(
                    color: Palette.semiGray,
                    child: const Icon(Icons.broken_image, color: Palette.gray),
                  ),
                );
              },
            ),

            // --- Favorite (heart) button ---
            Positioned(
              top: 12,
              right: 12,
              child: _HeartButton(
                isFavorite: _isFavorite,
                onTap: () => setState(() => _isFavorite = !_isFavorite),
              ),
            ),

            // --- Small map badge, bottom-right ---
            Positioned(bottom: 12, right: 12, child: _MapBadge()),

            // --- Dots indicator ---
            Positioned(
              bottom: 10,
              left: 0,
              right: 0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(widget.property.images.length, (index) {
                  final active = index == _currentPage;
                  return AnimatedContainer(
                    duration: const Duration(milliseconds: 200),
                    margin: const EdgeInsets.symmetric(horizontal: 2.5),
                    width: 6,
                    height: 6,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: active
                          ? Palette.white
                          : Palette.white.withValues(alpha: 0.55),
                    ),
                  );
                }),
              ),
            ),

            // --- Optional left/right arrows (nice on tablet / web / desktop) ---
            if (widget.property.images.length > 1) ...[
              Positioned(
                left: 8,
                top: 0,
                bottom: 0,
                child: Center(
                  child: _ArrowButton(
                    icon: Icons.chevron_left,
                    onTap: () => _goTo(_currentPage - 1),
                  ),
                ),
              ),
              Positioned(
                right: 8,
                top: 0,
                bottom: 0,
                child: Center(
                  child: _ArrowButton(
                    icon: Icons.chevron_right,
                    onTap: () => _goTo(_currentPage + 1),
                  ),
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }

  // ---------------------------------------------------------------------
  // Info section (title, rating, subtitles, price, tags)
  // ---------------------------------------------------------------------
  Widget _buildInfo() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Text(
                  widget.property.category.name,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: Palette.fontColor,
                    fontFamily: FontFamily.alexandria,
                  ),
                ),
              ),
              const SizedBox(width: 8),
              // Row(
              //   children: [
              //     const Icon(Icons.star, size: 13, color: Color(0xFF222222)),
              //     const SizedBox(width: 4),
              //     Text(
              //       '${widget.rating.toStringAsFixed(2)} (${widget.reviewCount})',
              //       style: const TextStyle(
              //         fontSize: 14,
              //         color: Color(0xFF222222),
              //       ),
              //     ),
              //   ],
              // ),
            ],
          ),
          const SizedBox(height: 2),
          Text(
            widget.property.placeType.name,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontSize: 14,
              color: Palette.fontColor.withAlpha(200),
              fontWeight: FontWeight.w400,
              fontFamily: FontFamily.alexandria,
            ),
          ),
          Text(
            widget.property.title,
            style: TextStyle(
              fontSize: 14,
              color: Palette.fontColor.withAlpha(200),
              fontWeight: FontWeight.w400,
              fontFamily: FontFamily.alexandria,
            ),
          ),
          Text(
            widget.property.area.name,
            style: TextStyle(
              fontSize: 14,
              color: Palette.fontColor.withAlpha(200),
              fontWeight: FontWeight.w400,
              fontFamily: FontFamily.alexandria,
            ),
          ),

          const SizedBox(height: 6),
          Text(
            '${widget.property.pricePerNight.toStringAsFixed(2)} ${LocaleKeys.sypForTheNight.tr()}',
            style: TextStyle(
              fontSize: FontSize.smallTitle,
              fontWeight: FontWeight.w700,
              color: Palette.fontColor,
              // decoration: TextDecoration.underline,
            ),
          ),
          // if (widget.property.amenities.isNotEmpty) ...[
          //   const SizedBox(height: 8),
          //   Wrap(
          //     spacing: 6,
          //     runSpacing: 6,
          //     children: widget.property.amenities
          //         .map(
          //           (amenity) => Container(
          //             padding: const EdgeInsets.symmetric(
          //               horizontal: 9,
          //               vertical: 5,
          //             ),
          //             decoration: BoxDecoration(
          //               color: Palette.lightPrimary.withValues(alpha: 0.3),
          //               borderRadius: BorderRadius.circular(6),
          //             ),
          //             child: Text(
          //               amenity.name,
          //               style: const TextStyle(
          //                 fontSize: 12,
          //                 color: Palette.primary,
          //               ),
          //             ),
          //           ),
          //         )
          //         .toList(),
          //   ),
          // ],
        ],
      ),
    );
  }
}

// ---------------------------------------------------------------------
// Heart / favorite button
// ---------------------------------------------------------------------
class _HeartButton extends StatelessWidget {
  final bool isFavorite;
  final VoidCallback onTap;

  const _HeartButton({required this.isFavorite, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Icon(
        isFavorite ? Icons.favorite : Icons.favorite_border,
        size: 26,
        color: isFavorite ? Palette.red : Palette.white,
        shadows: const [Shadow(color: Palette.black, blurRadius: 4)],
      ),
    );
  }
}

// ---------------------------------------------------------------------
// Small map preview badge (bottom-right of carousel)
// ---------------------------------------------------------------------
class _MapBadge extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 42,
      height: 42,
      decoration: BoxDecoration(
        color: Palette.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: const [
          BoxShadow(color: Palette.black, blurRadius: 4, offset: Offset(0, 1)),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: Stack(
          fit: StackFit.expand,
          children: [
            GridView.count(
              crossAxisCount: 2,
              physics: const NeverScrollableScrollPhysics(),
              children: const [
                ColoredBox(color: Color(0xFFCFE8D8)),
                ColoredBox(color: Color(0xFFF1E4CF)),
                ColoredBox(color: Color(0xFFE7ECE7)),
                ColoredBox(color: Color(0xFFDFE9DF)),
              ],
            ),
            const Center(
              child: Icon(Icons.location_on, size: 16, color: Palette.black),
            ),
          ],
        ),
      ),
    );
  }
}

// ---------------------------------------------------------------------
// Prev/Next arrow button (desktop / web hover-style navigation)
// ---------------------------------------------------------------------
class _ArrowButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onTap;

  const _ArrowButton({required this.icon, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Palette.white.withValues(alpha: 0.9),
      shape: const CircleBorder(),
      child: InkWell(
        customBorder: const CircleBorder(),
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(4),
          child: Icon(icon, size: 20, color: Palette.black),
        ),
      ),
    );
  }
}
