import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'theme.dart';

class ThemeManager {
  static ThemeData themeData(Customizable customTheme) => ThemeData(
    scrollbarTheme: const ScrollbarThemeData().copyWith(
      thumbColor: WidgetStateProperty.all(Palette.primary),
    ),
    colorScheme: ColorScheme.fromSeed(
      primary: Palette.primary,
      // onPrimary: Palette.lightPrimary,
      seedColor: Palette.primary,
      error: Palette.error,
      tertiary: Palette.writing,
      surface: Palette.white,
      onSurface: Palette.text,
      secondary: Palette.secondary,
    ),

    dialogTheme: const DialogThemeData(
      surfaceTintColor: Palette.white,
      backgroundColor: Palette.white,
    ),
    progressIndicatorTheme: const ProgressIndicatorThemeData(
      color: Palette.primary,
      circularTrackColor: Palette.lightPrimary,
    ),
    scaffoldBackgroundColor: Palette.backgroundColor,

    cardColor: Palette.gray,
    hintColor: Palette.hint,
    datePickerTheme: const DatePickerThemeData(backgroundColor: Palette.white),
    // shadowColor: Palette.grey,
    shadowColor: const Color.fromRGBO(0, 0, 0, 0.25),
    fontFamily: FontFamily.alexandria,

    dividerColor: Palette.gray,
    dividerTheme: const DividerThemeData(color: Palette.gray, thickness: 1),
    textTheme: TextTheme(
      headlineLarge: customTheme.modifyLargeHeadline(),
      headlineMedium: customTheme.modifyMediumHeadline(),
      headlineSmall: customTheme.modifySmallHeadline(),
      bodyLarge: customTheme.modifyBodyLarge(),
      bodyMedium: customTheme.modifyBodyMedium(),
      bodySmall: customTheme.modifyBodySmall(),
      labelLarge: customTheme.modifyLargeLabel(),
      labelMedium: customTheme.modifyMediumLabel(),
      labelSmall: customTheme.modifySmallLabel(),
      titleSmall: customTheme.titleSmallLabel(),
    ),
    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
        padding: WidgetStateProperty.all(
          const EdgeInsets.symmetric(horizontal: Dimensions.space4),
        ),
        textStyle: WidgetStateProperty.all(
          const TextStyle(fontWeight: FontWeight.w600, color: Palette.text),
        ),
        foregroundColor: WidgetStateProperty.all(Palette.text),
      ),
    ),
    bottomSheetTheme: const BottomSheetThemeData(
      backgroundColor: Palette.white,
      showDragHandle: true,
      dragHandleColor: Color.fromRGBO(178, 190, 195, 1),
      dragHandleSize: Size(42, 3),
    ),

    appBarTheme: AppBarTheme(
      systemOverlayStyle: const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark, // For Android: black icons
        statusBarBrightness: Brightness.light, // For iOS: black icons
      ),
      backgroundColor: Palette.white,
      titleTextStyle: customTheme.modifyBodyMedium().copyWith(
        color: Palette.text,
        fontWeight: FontWeight.w500,
      ),
      leadingWidth: 60,
      iconTheme: const IconThemeData(color: Palette.secondary),
      // 1. Fixes the "Scrolled Under" color shift
      scrolledUnderElevation: 0,
      surfaceTintColor: Colors.transparent,
      centerTitle: false,
      elevation: 0,
    ),
  );
}
