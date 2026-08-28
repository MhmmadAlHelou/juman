import 'dart:ui' as ui;
import 'package:ewan/core/core.dart';
import 'package:flutter/material.dart';

class MarkerBitmapGenerator {
  static Future<BitmapDescriptor> generate({
    required double price,
    required bool selected,
  }) async {
    final priceText = '${price.toInt()} ${LocaleKeys.currency.tr()}';

    const double scaleFactor = 2.5;

    final pictureRecorder = ui.PictureRecorder();
    final canvas = Canvas(pictureRecorder);

    final textPainter = TextPainter(
      text: TextSpan(
        text: priceText,
        style: TextStyle(
          color: selected ? Palette.white : Palette.primary,
          fontSize: 13 * scaleFactor,
          fontWeight: FontWeight.w600,
        ),
      ),
      textDirection: TextDirection.ltr,
    )..layout();

    const horizontalPadding = 10.0 * scaleFactor;
    const verticalPadding = 6.0 * scaleFactor;

    final logicalWidth =
        (textPainter.width / scaleFactor) +
        (horizontalPadding / scaleFactor) * 2;
    final logicalHeight =
        (textPainter.height / scaleFactor) +
        (verticalPadding / scaleFactor) * 2;

    final width = textPainter.width + horizontalPadding * 2;
    final height = textPainter.height + verticalPadding * 2;

    final rrect = RRect.fromRectAndRadius(
      Rect.fromLTWH(0, 0, width, height),
      Radius.circular(height / 2),
    );

    canvas.drawRRect(
      rrect.shift(const Offset(0, 2 * scaleFactor)),
      Paint()
        ..color = Palette.primary.withValues(alpha: 0.15)
        ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 3 * scaleFactor),
    );

    canvas.drawRRect(
      rrect,
      Paint()..color = selected ? Palette.primary : Palette.white,
    );

    textPainter.paint(canvas, const Offset(horizontalPadding, verticalPadding));

    final picture = pictureRecorder.endRecording();
    final image = await picture.toImage(width.toInt(), height.toInt());
    final byteData = await image.toByteData(format: ui.ImageByteFormat.png);
    final bytes = byteData!.buffer.asUint8List();

    return BitmapDescriptor.bytes(
      bytes,
      width: logicalWidth,
      height: logicalHeight,
    );
  }
}
