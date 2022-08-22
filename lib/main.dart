import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';
import 'package:kuttab/Utils/constants.dart';
import 'package:kuttab/views/login-page/login-view.dart';
import 'package:kuttab/views/teacher-home-page/teacher-home-view.dart';
import 'package:provider/provider.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      localizationsDelegates: const [
        GlobalCupertinoLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale("ar", "AE"),
      ],
      locale: const Locale("ar", "AE"),
      debugShowCheckedModeBanner: false,
      initialRoute: '/TeacherHomepage',
      home: const LoginPage(),
      getPages: [
        GetPage(name: '/LoginPage', page: () => const LoginPage()),
        GetPage(name: '/TeacherHomepage', page: () => const TeacherHomepage()),
      ],
      title: 'Wattan',
      theme: ThemeData(
        primarySwatch: WHITE_COLOR_MATERIAL,
      ),
    );
  }
}
