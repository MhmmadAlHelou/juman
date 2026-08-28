import 'app.dart' show App;
import 'package:ewan/core/core.dart';
import 'package:flutter/material.dart';
import 'generated/codegen_loader.g.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await EasyLocalization.ensureInitialized();

  await serviceLocator();

  ErrorWidget.builder = (FlutterErrorDetails details) {
    return const SizedBox.shrink();
  };

  runApp(
    EasyLocalization(
      supportedLocales: LocalizationConfig.supportedLocales,
      path: LocalizationConfig.translationFilePath,
      fallbackLocale: LocalizationConfig.defaultLocale,
      useFallbackTranslations: true,
      assetLoader: const CodegenLoader(),
      startLocale: LocalizationConfig.defaultLocale,
      child: App.instance,
    ),
  );
}

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       localizationsDelegates: context.localizationDelegates,
//       supportedLocales: context.supportedLocales,
//       locale: context.locale,
//       home: const HomeScreen(),
//     );
//   }
// }

// class HomeScreen extends StatelessWidget {
//   const HomeScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text('welcome_msg').tr()),
//       body: LoginScreen(
//         onLoginSuccess: () {
//           ScaffoldMessenger.of(
//             context,
//           ).showSnackBar(SnackBar(content: Text('login_success_msg').tr()));
//         },
//       ),
//       // body: Center(
//       //   child: ElevatedButton(
//       //     onPressed: () {
//       //       // التحويل بين العربي والإنجليزي بضغطة زر
//       //       if (context.locale == const Locale('ar')) {
//       //         context.setLocale(const Locale('en'));
//       //       } else {
//       //         context.setLocale(const Locale('ar'));
//       //       }
//       //     },
//       //     child: const Text('change_lang').tr(),
//       //   ),
//       // ),
//     );
//   }
// }
