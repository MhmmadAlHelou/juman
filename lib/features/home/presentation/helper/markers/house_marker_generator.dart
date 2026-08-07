import 'dart:ui' as ui;
import 'package:ewan/core/core.dart';
import 'package:flutter/material.dart';

class HouseMarkerGenerator {
  static Future<BitmapDescriptor> generate({
    double size = 60,
    Color backgroundColor = Palette.primary,
    Color iconColor = Palette.white,
  }) async {
    final recorder = ui.PictureRecorder();
    final canvas = Canvas(recorder);
    final radius = size / 2;

    // black circle background
    final circlePaint = Paint()..color = backgroundColor;
    canvas.drawCircle(Offset(radius, radius), radius, circlePaint);

    // home icon (use Icons.home through TextPainter)
    final iconPainter = TextPainter(textDirection: TextDirection.ltr);
    iconPainter.text = TextSpan(
      text: String.fromCharCode(Icons.home.codePoint),
      style: TextStyle(
        fontSize: size * 0.5,
        fontFamily: Icons.home.fontFamily,
        package: Icons.home.fontPackage,
        color: iconColor,
      ),
    );
    iconPainter.layout();
    iconPainter.paint(
      canvas,
      Offset(radius - iconPainter.width / 2, radius - iconPainter.height / 2),
    );

    final picture = recorder.endRecording();
    final image = await picture.toImage(size.toInt(), size.toInt());
    final bytes = await image.toByteData(format: ui.ImageByteFormat.png);

    return BitmapDescriptor.bytes(
      bytes!.buffer.asUint8List(),
      width: size,
      height: size,
    );
  }
}
