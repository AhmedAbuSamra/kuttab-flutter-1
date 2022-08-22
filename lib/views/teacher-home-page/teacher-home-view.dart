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
        height: 200,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF4F946B),
              Color(0xFF4F946B),
            ],
          ),
          image: DecorationImage(
            image: AssetImage('assets/images/decoration-gradiant.png'),
            fit: BoxFit.cover,
            alignment: Alignment.topCenter,
            opacity: 1,
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [],
          ),
        ),
      ),
    );
  }
}
