import 'package:flutter/material.dart';

import 'palette.dart';

/// Central repository of reusable `BoxDecoration` objects used throughout the
/// application.
///
/// By keeping the different decorations in one place we ensure a consistent
/// look and make it easy to tweak the design later on.
class AppDecorations {
  AppDecorations._();

  /// A common card style used for list items, order cells, etc.
  static BoxDecoration card = BoxDecoration(
    color: Palette.white,
    borderRadius: BorderRadius.circular(16),
    border: Border.all(color: Palette.gray),
    boxShadow: <BoxShadow>[
      BoxShadow(
        color: Palette.black.withValues(alpha: 0.05),
        blurRadius: 2,
        offset: const Offset(0, 1),
      ),
    ],
  );

  /// A rounded container with an optional background [color] and a
  /// [radius]. The default radius matches the style used in the form fields
  /// throughout the app.
  static BoxDecoration rounded({
    Color color = Palette.white,
    double radius = 50,
    Color? borderColor = Palette.gray,
  }) {
    return BoxDecoration(
      color: color,
      borderRadius: BorderRadius.circular(radius),
      border: borderColor != null ? Border.all(color: borderColor) : null,
    );
  }
}
