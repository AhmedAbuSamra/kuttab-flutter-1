import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kuttab/Utils/routes/routes-names.dart';
import 'package:kuttab/views/about-page/about-view.dart';
import 'package:kuttab/views/login-page/login-view.dart';
import 'package:kuttab/views/my-account-page/my-account-view.dart';
import 'package:kuttab/views/notifications-page/notifications-view.dart';
import 'package:kuttab/views/personal-information-page/personal-information-view.dart';
import 'package:kuttab/views/settings-page/settings-view.dart';
import 'package:kuttab/views/teacher-app/student-all-achievements-page/student-all-achievements-view.dart';
import 'package:kuttab/views/teacher-app/student-attendance-page/student-attendance-view.dart';
import 'package:kuttab/views/teacher-app/student-information-page/student-information-view.dart';
import 'package:kuttab/views/teacher-app/teacher-home-page/teacher-home-view.dart';
import 'package:kuttab/views/teacher-app/teacher-student-account/teacher-student-account-view.dart';

class Routes {
  static List<GetPage<dynamic>> pages = [
    GetPage(name: RoutesName.loginPage, page: () => const LoginPage()),
    GetPage(name: RoutesName.settingsPage, page: () => const SettingsPage()),
    GetPage(name: RoutesName.aboutPage, page: () => const AboutPage()),
    GetPage(
        name: RoutesName.teacherHomepage, page: () => const TeacherHomePage()),
    GetPage(
        name: RoutesName.studentAllAchievementsPage,
        page: () => const StudentAllAchievementsPage()),
    GetPage(
        name: RoutesName.teacherStudentAccountPage,
        page: () => const TeacherStudentAccountPage()),
    GetPage(name: RoutesName.myAccountPage, page: () => const MyAccountPage()),
    GetPage(
        name: RoutesName.personalInformationPage,
        page: () => const PersonalInformationPage()),
    GetPage(
        name: RoutesName.studentAttendancePage,
        page: () => const StudentAttendancePage()),
    GetPage(
        name: RoutesName.studentInformationPage,
        page: () => const StudentInformationPage()),
    GetPage(
        name: RoutesName.notificationsPage,
        page: () => const NotificationsPage()),
  ];
}
