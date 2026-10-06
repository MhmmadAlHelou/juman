import 'package:flutter/foundation.dart';

import 'app.dart' show App;
import 'package:ewan/core/core.dart';
import 'package:flutter/material.dart';
import 'generated/codegen_loader.g.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await EasyLocalization.ensureInitialized();

  await serviceLocator();

  if (kReleaseMode) {
    ErrorWidget.builder = (FlutterErrorDetails details) {
      return const SizedBox.shrink();
    };
  }

  runApp(
    EasyLocalization(
      supportedLocales: LocalizationConfig.supportedLocales,
      path: LocalizationConfig.translationFilePath,
      fallbackLocale: LocalizationConfig.defaultLocale,
      useFallbackTranslations: true,
      assetLoader: const CodegenLoader(),
      // startLocale: Locale('ar'),
      startLocale: LocalizationConfig.defaultLocale,
      child: App.instance,
    ),
  );
}
