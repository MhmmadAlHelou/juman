import 'package:flutter/material.dart';
import 'font_family.dart';

import 'font_size.dart';

abstract class AppTextTheme {
  TextStyle smallHeadline = TextStyle(
    fontFamily: FontFamily.plusJakartaSans,
    fontWeight: FontWeight.w500,
    fontSize: FontSize.smallHeadline,
  );

  final TextStyle mediumHeadline = TextStyle(
    fontFamily: FontFamily.plusJakartaSans,
    fontWeight: FontWeight.w700,
    fontSize: FontSize.mediumHeadline,
  );

  final TextStyle largeHeadline = TextStyle(
    fontFamily: FontFamily.plusJakartaSans,
    fontWeight: FontWeight.w600,
    fontSize: FontSize.largeHeadline,
  );

  final TextStyle bodyLarge = TextStyle(
    fontFamily: FontFamily.plusJakartaSans,
    fontWeight: FontWeight.w600,
    fontSize: FontSize.largeBody,
  );
  final TextStyle bodyMedium = TextStyle(
    fontFamily: FontFamily.plusJakartaSans,
    fontWeight: FontWeight.w400,
    fontSize: FontSize.mediumBody,
  );
  final TextStyle bodySmall = TextStyle(
    fontFamily: FontFamily.plusJakartaSans,
    fontWeight: FontWeight.w400,
    fontSize: FontSize.smallBody,
  );
  final TextStyle largeLabel = TextStyle(
    fontFamily: FontFamily.plusJakartaSans,
    fontWeight: FontWeight.w400,
    fontSize: FontSize.largeLabel,
  );
  final TextStyle mediumLabel = TextStyle(
    fontFamily: FontFamily.plusJakartaSans,
    fontWeight: FontWeight.w400,
    fontSize: FontSize.mediumLabel,
  );
  final TextStyle smallLabel = TextStyle(
    fontFamily: FontFamily.plusJakartaSans,
    fontWeight: FontWeight.w400,
    fontSize: FontSize.smallLabel,
  );

  final TextStyle smallTitle = TextStyle(
    fontFamily: FontFamily.plusJakartaSans,
    fontWeight: FontWeight.w500,
    fontSize: FontSize.smallTitle,
  );
}
