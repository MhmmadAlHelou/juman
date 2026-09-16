import 'package:ewan/core/managers/theme/palette.dart';
import 'package:flutter/material.dart';

class SurfaceCard extends StatelessWidget {
  const SurfaceCard({
    super.key,
    required this.child,
    this.color,
    this.borderRadius = 16,
    this.border,
    this.clip = true,
  });

  final Widget child;
  final Color? color;
  final double borderRadius;
  final BoxBorder? border;
  final bool clip;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color ?? Palette.white,
        borderRadius: BorderRadius.circular(borderRadius),
        border: border,
      ),
      clipBehavior: clip ? Clip.antiAlias : Clip.none,
      child: Material(type: MaterialType.transparency, child: child),
    );
  }
}
