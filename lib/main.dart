import 'package:ewan/features/auth/presentation/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await EasyLocalization.ensureInitialized(); // 1. تهيئة الحزمة

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
      // 2. ربط إعدادات اللغة مع MaterialApp
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
      appBar: AppBar(
        title: const Text('welcome_msg').tr(), // سيظهر النص حسب لغة الجهاز
      ),
      body: Container(
        height: MediaQuery.of(context).size.height - 5,
        child: LoginView(),
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
