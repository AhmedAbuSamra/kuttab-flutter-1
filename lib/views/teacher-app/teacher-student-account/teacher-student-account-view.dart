import 'package:flutter/material.dart';
import 'package:kuttab/views/componant/app-top-bar.dart';
import './widget.dart';

class TeacherStudentAccountPage extends StatefulWidget {
  const TeacherStudentAccountPage({Key? key}) : super(key: key);

  @override
  State<TeacherStudentAccountPage> createState() =>
      _TeacherStudentAccountPageState();
}

class _TeacherStudentAccountPageState extends State<TeacherStudentAccountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          color: Color(0xFFf4f4f4),
          image: DecorationImage(
            image: AssetImage('assets/images/decoration-grey.png'),
            fit: BoxFit.fitWidth,
            alignment: Alignment.topCenter,
            opacity: 0.1,
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: const [
              SizedBox(height: 40),
              AppTopBar(
                title: 'حساب الطالب',
              ),
              SizedBox(height: 20),
              StudentProfileBody(),
            ],
          ),
        ),
      ),
    );
  }
}
