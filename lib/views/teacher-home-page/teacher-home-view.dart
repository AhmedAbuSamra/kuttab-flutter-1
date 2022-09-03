import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:kuttab/views/teacher-home-page/widgets.dart';

class TeacherHomepage extends StatefulWidget {
  const TeacherHomepage({Key? key}) : super(key: key);

  @override
  State<TeacherHomepage> createState() => _TeacherHomepageState();
}

class _TeacherHomepageState extends State<TeacherHomepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/decoration-gradiant.png'),
            fit: BoxFit.fitWidth,
            alignment: Alignment.topCenter,
            opacity: 1,
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: const [
              SizedBox(height: 50),
              TopBar(
                imgPath: "assets/images/personal-pic.png",
                haveNotification: true,
              ),
              TeacherHomeHeader(
                imgPath: "assets/images/Mosque-logo.png",
                schoolName: "مركز الفاروق لتحفيظ القرآن الكريم",
                schoolAddress: "غزة - النصر - مسجد الفاروق",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
