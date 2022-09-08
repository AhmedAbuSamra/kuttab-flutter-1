import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';
import 'package:kuttab/Utils/constants.dart';
import 'package:kuttab/views/login-page/login-view.dart';
import 'package:kuttab/views/my-account-page/my-account-view.dart';
import 'package:kuttab/views/teacher-app/student-all-achievements-page/student-all-achievements-view.dart';
import 'package:kuttab/views/teacher-app/teacher-home-page/teacher-home-view.dart';
import 'package:kuttab/views/teacher-app/teacher-student-account/teacher-student-account-view.dart';
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
      initialRoute: '/TeacherStudentAccountPage',
      home: const LoginPage(),
      getPages: [
        GetPage(name: '/LoginPage', page: () => const LoginPage()),
        GetPage(name: '/TeacherHomepage', page: () => const TeacherHomePage()),
        GetPage(
            name: '/StudentAllAchievementsPage',
            page: () => const StudentAllAchievementsPage()),
        GetPage(
            name: '/TeacherStudentAccountPage',
            page: () => const TeacherStudentAccountPage()),
        GetPage(name: '/MyAccountPage', page: () => const MyAccountPage()),
      ],
      title: 'Wattan',
      theme: ThemeData(
        primarySwatch: WHITE_COLOR_MATERIAL,
      ),
    );
  }
}
