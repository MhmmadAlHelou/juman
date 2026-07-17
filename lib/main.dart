import 'package:ewan/core/core.dart';
import 'package:ewan/features/auth/presentation/screens/login_screen.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await EasyLocalization.ensureInitialized(); // 1. تهيئة الحزمة

  await serviceLocator();

  runApp(
    EasyLocalization(
      supportedLocales: const [Locale('en'), Locale('ar')], // اللغات المدعومة
      path: 'assets/translations', // مسار ملفات الـ JSON
      fallbackLocale: const Locale('en'), // اللغة الاحتياطية في حال حدوث خطأ
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('welcome_msg').tr()),
      body: LoginScreen(
        onLoginSuccess: () {
          ScaffoldMessenger.of(
            context,
          ).showSnackBar(SnackBar(content: Text('login_success_msg').tr()));
        },
      ),
      // body: Center(
      //   child: ElevatedButton(
      //     onPressed: () {
      //       // التحويل بين العربي والإنجليزي بضغطة زر
      //       if (context.locale == const Locale('ar')) {
      //         context.setLocale(const Locale('en'));
      //       } else {
      //         context.setLocale(const Locale('ar'));
      //       }
      //     },
      //     child: const Text('change_lang').tr(),
      //   ),
      // ),
    );
  }
}
