import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import '../../../../core/core.dart';

class HomeHeaderShimmer extends StatelessWidget {
  const HomeHeaderShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.only(start: 20, end: 20),
      child: Row(
        children: <Widget>[
          Shimmer.fromColors(
            baseColor: Palette.semiGray.withValues(alpha: 0.3),
            highlightColor: Palette.semiGray.withValues(alpha: 0.1),
            child: Row(
              children: <Widget>[
                Container(
                  width: 40,
                  height: 40,
                  decoration: const BoxDecoration(
                    color: Palette.semiGray,
                    shape: BoxShape.circle,
                  ),
                ),
                const SizedBox(width: 12),
                Container(width: 80, height: 20, color: Palette.semiGray),
              ],
            ),
          ),
          const Spacer(),
          Container(
            width: 40,
            height: 40,
            decoration: AppDecorations.card,
            child: const Icon(Icons.notifications, color: Palette.semiGray),
          ),
          const SizedBox(width: 12),
          Container(
            width: 59,
            height: 40,
            decoration: AppDecorations.card,
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: AssetsManager.images.logoLabeled.image(
              width: 33,
              height: 24,
            ),
          ),
        ],
      ),
    );
  }
}

class AdsShimmer extends StatelessWidget {
  const AdsShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Palette.semiGray.withValues(alpha: 0.3),
      highlightColor: Palette.semiGray.withValues(alpha: 0.1),
      child: Container(
        height: 256,
        margin: const EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
          color: Palette.semiGray,
          borderRadius: BorderRadius.circular(24),
        ),
      ),
    );
  }
}

class CategoriesShimmer extends StatelessWidget {
  const CategoriesShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 168,
      child: ListView.separated(
        padding: EdgeInsets.zero,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: 5, // Show 5 shimmer items
        separatorBuilder: (_, __) => const SizedBox(width: 16),
        itemBuilder: (BuildContext context, int index) {
          return Shimmer.fromColors(
            baseColor: Palette.semiGray.withValues(alpha: 0.3),
            highlightColor: Palette.semiGray.withValues(alpha: 0.1),
            child: Container(
              width: 128,
              decoration: BoxDecoration(
                color: Palette.semiGray,
                borderRadius: BorderRadius.circular(24),
              ),
            ),
          );
        },
      ),
    );
  }
}

class HomeImageShimmer extends StatelessWidget {
  const HomeImageShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Palette.semiGray.withValues(alpha: 0.3),
      highlightColor: Palette.semiGray.withValues(alpha: 0.1),
      child: Container(
        width: double.infinity,
        height: 179,
        margin: const EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
          color: Palette.semiGray,
          borderRadius: BorderRadius.circular(32),
        ),
      ),
    );
  }
}

class RecentProjectsShimmer extends StatelessWidget {
  final int itemCount;
  const RecentProjectsShimmer({super.key, this.itemCount = 2});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List<Widget>.generate(
        itemCount,
        (int index) => Shimmer.fromColors(
          baseColor: Palette.semiGray.withValues(alpha: 0.3),
          highlightColor: Palette.semiGray.withValues(alpha: 0.1),
          child: Container(
            margin: const EdgeInsets.only(bottom: 12, left: 20, right: 20),
            padding: const EdgeInsets.all(16.0),
            decoration: AppDecorations.card,
            child: Row(
              children: <Widget>[
                Container(
                  width: 48,
                  height: 48,
                  decoration: AppDecorations.rounded(radius: 12),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        width: 150,
                        height: 16,
                        color: Palette.semiGray,
                      ),
                      const SizedBox(height: 4),
                      Container(
                        width: 100,
                        height: 12,
                        color: Palette.semiGray,
                      ),
                    ],
                  ),
                ),
                const Icon(Icons.chevron_right, color: Palette.semiGray),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class GridListShimmer extends StatelessWidget {
  final int itemCount;
  const GridListShimmer({super.key, this.itemCount = 4});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 24),
      child: GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 8.0,
          crossAxisSpacing: 8.0,
          childAspectRatio: 1.0,
        ),
        itemCount: itemCount,
        itemBuilder: (BuildContext context, int index) {
          return Shimmer.fromColors(
            baseColor: Palette.semiGray.withValues(alpha: 0.3),
            highlightColor: Palette.semiGray.withValues(alpha: 0.1),
            child: Container(
              padding: const EdgeInsets.all(16.0),
              decoration: AppDecorations.card,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    width: 48,
                    height: 48,
                    decoration: AppDecorations.rounded(radius: 12),
                  ),
                  const SizedBox(height: 12),
                  Container(
                    width: double.infinity,
                    height: 16,
                    color: Palette.semiGray,
                  ),
                  const SizedBox(height: 4),
                  Container(width: 100, height: 12, color: Palette.semiGray),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class OrderShimmer extends StatelessWidget {
  const OrderShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const SizedBox(height: 16),
        // Service image shimmer
        Shimmer.fromColors(
          baseColor: Palette.semiGray.withValues(alpha: 0.3),
          highlightColor: Palette.semiGray.withValues(alpha: 0.1),
          child: Container(
            height: 104,
            width: 104,
            decoration: BoxDecoration(
              color: Palette.semiGray,
              borderRadius: BorderRadius.circular(12),
            ),
          ),
        ),
        const SizedBox(height: 16),
        // Title shimmer
        Shimmer.fromColors(
          baseColor: Palette.semiGray.withValues(alpha: 0.3),
          highlightColor: Palette.semiGray.withValues(alpha: 0.1),
          child: Container(height: 24, width: 200, color: Palette.semiGray),
        ),
        const SizedBox(height: 4),
        // Service badge shimmer
        Shimmer.fromColors(
          baseColor: Palette.semiGray.withValues(alpha: 0.3),
          highlightColor: Palette.semiGray.withValues(alpha: 0.1),
          child: Container(
            height: 32,
            width: 120,
            decoration: BoxDecoration(
              color: Palette.semiGray,
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        ),
        const SizedBox(height: 12),
        // Status widget shimmer (conditional, but show for loading)
        Shimmer.fromColors(
          baseColor: Palette.semiGray.withValues(alpha: 0.3),
          highlightColor: Palette.semiGray.withValues(alpha: 0.1),
          child: Container(
            width: double.infinity,
            height: 80,
            decoration: AppDecorations.card,
          ),
        ),
        const SizedBox(height: 20),
        // Form fields shimmer - show multiple card-like items
        ...List<Widget>.generate(
          4,
          (int index) => Shimmer.fromColors(
            baseColor: Palette.semiGray.withValues(alpha: 0.3),
            highlightColor: Palette.semiGray.withValues(alpha: 0.1),
            child: Container(
              margin: const EdgeInsets.only(bottom: 16),
              width: double.infinity,
              height: 80,
              decoration: AppDecorations.rounded(radius: 12),
            ),
          ),
        ),
        // Grid cards shimmer
        const SizedBox(height: 24),
        GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 16.0,
            crossAxisSpacing: 16.0,
            childAspectRatio: 171 / 86,
          ),
          padding: EdgeInsets.zero,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: 4,
          itemBuilder: (BuildContext context, int index) {
            return Shimmer.fromColors(
              baseColor: Palette.semiGray.withValues(alpha: 0.3),
              highlightColor: Palette.semiGray.withValues(alpha: 0.1),
              child: Container(decoration: AppDecorations.card, height: 86),
            );
          },
        ),
      ],
    );
  }
}
