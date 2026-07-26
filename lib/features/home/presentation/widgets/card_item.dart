import 'package:flutter/material.dart';

/// -----------------------------------------------------------------------
/// ListingCard
/// A single "listing" card (image carousel + info) similar to Airbnb's
/// search-result cards.
/// -----------------------------------------------------------------------
class ListingCard extends StatefulWidget {
  final List<String> imageUrls;
  final String title;
  final double rating;
  final int reviewCount;
  final String
  subtitle1; // e.g. "Hostelfly Fira – Bed in 8-person mixed dorm..."
  final String subtitle2; // e.g. "Business host"
  final String dateRange; // e.g. "1–6 Aug"
  final String priceText; // e.g. "£142 total"
  final List<String> tags; // e.g. ["Pay £0 today", "Free cancellation"]
  final VoidCallback? onTap;

  const ListingCard({
    super.key,
    required this.imageUrls,
    required this.title,
    required this.rating,
    required this.reviewCount,
    required this.subtitle1,
    required this.subtitle2,
    required this.dateRange,
    required this.priceText,
    this.tags = const [],
    this.onTap,
  });

  @override
  State<ListingCard> createState() => _ListingCardState();
}

class _ListingCardState extends State<ListingCard> {
  final PageController _pageController = PageController();
  int _currentPage = 0;
  bool _isFavorite = false;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _goTo(int page) {
    if (page < 0 || page >= widget.imageUrls.length) return;
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
              itemCount: widget.imageUrls.length,
              onPageChanged: (index) => setState(() => _currentPage = index),
              itemBuilder: (context, index) {
                return Image.network(
                  widget.imageUrls[index],
                  fit: BoxFit.cover,
                  loadingBuilder: (context, child, progress) {
                    if (progress == null) return child;
                    return Container(
                      color: Colors.grey.shade200,
                      child: const Center(
                        child: CircularProgressIndicator(strokeWidth: 2),
                      ),
                    );
                  },
                  errorBuilder: (context, error, stackTrace) => Container(
                    color: Colors.grey.shade300,
                    child: const Icon(Icons.broken_image, color: Colors.grey),
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
                children: List.generate(widget.imageUrls.length, (index) {
                  final active = index == _currentPage;
                  return AnimatedContainer(
                    duration: const Duration(milliseconds: 200),
                    margin: const EdgeInsets.symmetric(horizontal: 2.5),
                    width: 6,
                    height: 6,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: active
                          ? Colors.white
                          : Colors.white.withValues(alpha: 0.55),
                    ),
                  );
                }),
              ),
            ),

            // --- Optional left/right arrows (nice on tablet / web / desktop) ---
            if (widget.imageUrls.length > 1) ...[
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
                  widget.title,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF222222),
                  ),
                ),
              ),
              const SizedBox(width: 8),
              Row(
                children: [
                  const Icon(Icons.star, size: 13, color: Color(0xFF222222)),
                  const SizedBox(width: 4),
                  Text(
                    '${widget.rating.toStringAsFixed(2)} (${widget.reviewCount})',
                    style: const TextStyle(
                      fontSize: 14,
                      color: Color(0xFF222222),
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 2),
          Text(
            widget.subtitle1,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(fontSize: 14, color: Colors.grey.shade600),
          ),
          Text(
            widget.subtitle2,
            style: TextStyle(fontSize: 14, color: Colors.grey.shade600),
          ),
          Text(
            widget.dateRange,
            style: TextStyle(fontSize: 14, color: Colors.grey.shade600),
          ),
          const SizedBox(height: 6),
          Text(
            widget.priceText,
            style: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w600,
              color: Color(0xFF222222),
              decoration: TextDecoration.underline,
            ),
          ),
          if (widget.tags.isNotEmpty) ...[
            const SizedBox(height: 8),
            Wrap(
              spacing: 6,
              runSpacing: 6,
              children: widget.tags
                  .map(
                    (tag) => Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 9,
                        vertical: 5,
                      ),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 174, 235, 152),
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: Text(
                        tag,
                        style: const TextStyle(
                          fontSize: 12,
                          color: Color.fromARGB(255, 9, 98, 18),
                        ),
                      ),
                    ),
                  )
                  .toList(),
            ),
          ],
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
        color: isFavorite ? const Color(0xFFFF385C) : Colors.white,
        shadows: const [Shadow(color: Colors.black45, blurRadius: 4)],
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
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: const [
          BoxShadow(color: Colors.black26, blurRadius: 4, offset: Offset(0, 1)),
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
              child: Icon(Icons.location_on, size: 16, color: Colors.black87),
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
      color: Colors.white.withValues(alpha: 0.9),
      shape: const CircleBorder(),
      child: InkWell(
        customBorder: const CircleBorder(),
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(4),
          child: Icon(icon, size: 20, color: Colors.black87),
        ),
      ),
    );
  }
}

// -----------------------------------------------------------------------
// Example usage
// -----------------------------------------------------------------------
class ListingCardDemo extends StatelessWidget {
  const ListingCardDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: ListingCard(
            imageUrls: const [
              'https://images.unsplash.com/photo-1631049307264-da0ec9d70304?w=800&q=80',
              'https://images.unsplash.com/photo-1555854877-bab0e564b8d5?w=800&q=80',
              'https://images.unsplash.com/photo-1522771739844-6a9f6d5f14af?w=800&q=80',
              'https://images.unsplash.com/photo-1595576508898-0ad5c879a061?w=800&q=80',
              'https://images.unsplash.com/photo-1505693416388-ac5ce068fe85?w=800&q=80',
            ],
            title: "Shared room in L'Hospitalet de …",
            rating: 4.67,
            reviewCount: 177,
            subtitle1: 'Hostelfly Fira – Bed in 8-person mixed dormit…',
            subtitle2: 'Business host',
            dateRange: '1–6 Aug',
            priceText: '£142 total',
            tags: const ['Pay £0 today', 'Free cancellation'],
            onTap: () {
              // handle tap -> navigate to details page
            },
          ),
        ),
      ),
    );
  }
}
