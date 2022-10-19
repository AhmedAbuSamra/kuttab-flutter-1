import 'package:flutter/material.dart';
import 'package:kuttab/views/componant/app-top-bar.dart';
import 'package:kuttab/views/teacher-app/student-attendance-page/widgets.dart';

class StudentAttendancePage extends StatefulWidget {
  const StudentAttendancePage({Key? key}) : super(key: key);

  @override
  State<StudentAttendancePage> createState() => _StudentAttendancePageState();
}

class _StudentAttendancePageState extends State<StudentAttendancePage> {
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
        child: Column(
          children: const [
            SizedBox(height: 40),
            AppTopBar(
              title: 'حضور الطلاب',
            ),
            SizedBox(height: 20),
            StudentAttendanceBody(),
          ],
        ),
      ),
    );
  }
}
