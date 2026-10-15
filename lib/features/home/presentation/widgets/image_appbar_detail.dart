import 'package:ewan/core/core.dart';
import 'package:ewan/features/favourites/presentation/widgets/favorite_icon_button.dart';
import 'package:ewan/features/home/data/data.dart';
import 'package:flutter/material.dart';

class ImageAppbarDetails extends StatefulWidget {
  const ImageAppbarDetails({
    super.key,
    required this.property,
    this.showFavorite = true,
  });

  final PropertiesModel property;
  final bool showFavorite;

  @override
  State<ImageAppbarDetails> createState() => _ImageAppbarDetailState();
}

class _ImageAppbarDetailState extends State<ImageAppbarDetails> {
  // bool _isFavorite = false;
  int _currentImage = 0;
  final PageController _pageController = PageController();

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      pinned: false,
      expandedHeight: 320,
      backgroundColor: Palette.backgroundColor,
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
            iconColor: Palette.black,
            onTap: () {},
          ),
        ),
        if (widget.showFavorite)
          Padding(
            padding: const EdgeInsets.all(8),
            child: FavoriteIconButton(property: widget.property),
            // child: _RoundIconButton(
            //   icon: _isFavorite ? Icons.favorite : Icons.favorite_border,
            //   iconColor: _isFavorite ? Palette.red : Palette.black,
            //   onTap: () => setState(() => _isFavorite = !_isFavorite),
            // ),
          ),
      ],
      flexibleSpace: FlexibleSpaceBar(
        background: RepaintBoundary(
          child: Stack(
            fit: StackFit.expand,
            children: [
              PageView.builder(
                controller: _pageController,
                itemCount: widget.property.images.length,
                onPageChanged: (i) => setState(() => _currentImage = i),
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
                      child: const Icon(
                        Icons.broken_image,
                        color: Palette.gray,
                      ),
                    ),
                  );
                },
              ),
              if (widget.property.images.length > 1)
                Positioned(
                  bottom: 12,
                  left: 0,
                  right: 0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(widget.property.images.length, (i) {
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
                    '${_currentImage + 1} / ${widget.property.images.length}',
                    style: const TextStyle(color: Palette.white, fontSize: 12),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

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
