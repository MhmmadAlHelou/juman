import 'package:ewan/core/core.dart';
import 'package:flutter/material.dart';

@RoutePage()
class MyFavoritesScreen extends StatelessWidget {
  const MyFavoritesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.backgroundColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 24),
              Text(
                LocaleKeys.favorites.tr(),
                style: TextStyle(
                  fontFamily: FontFamily.alexandria,
                  fontSize: 28,
                  fontWeight: FontWeight.w700,
                  color: Palette.fontColor,
                ),
              ),
              Expanded(
                child: FavoritesEmptyView(
                  onExplore: () {
                    AutoTabsRouter.of(context).setActiveIndex(0);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class FavoritesEmptyView extends StatelessWidget {
  const FavoritesEmptyView({super.key, required this.onExplore});

  final VoidCallback onExplore;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 88,
          height: 88,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Palette.primary.withValues(alpha: 0.18),
          ),
          child: const Icon(
            Icons.favorite_border_rounded,
            size: 40,
            color: Palette.primary,
          ),
        ),
        const SizedBox(height: 24),
        Text(
          LocaleKeys.noFavoritesYet.tr(),
          style: TextStyle(
            fontFamily: FontFamily.alexandria,
            fontSize: 18,
            fontWeight: FontWeight.w700,
            color: Palette.fontColor,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          LocaleKeys.noFavoritesYetTitle.tr(),
          textAlign: TextAlign.center,
          style: TextStyle(
            fontFamily: FontFamily.alexandria,
            fontSize: 13,
            height: 1.5,
            color: Palette.fontColor.withValues(alpha: 0.7),
          ),
        ),
        const SizedBox(height: 40),
        SizedBox(
          width: double.infinity,
          height: 52,
          child: ElevatedButton(
            onPressed: onExplore,
            style: ElevatedButton.styleFrom(
              backgroundColor: Palette.primary,
              foregroundColor: Colors.white,
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
            ),
            child: Text(
              LocaleKeys.exploreProperties.tr(),
              style: TextStyle(
                fontFamily: FontFamily.alexandria,
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
        const SizedBox(height: 48),
      ],
    );
  }
}
