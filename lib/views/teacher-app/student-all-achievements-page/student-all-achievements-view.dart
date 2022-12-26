import 'package:flutter/material.dart';
import 'package:kuttab/views/componant/app-top-bar.dart';
import 'package:kuttab/views/teacher-app/student-all-achievements-page/widgets.dart';

class StudentAllAchievementsPage extends StatefulWidget {
  const StudentAllAchievementsPage({Key? key}) : super(key: key);

  @override
  State<StudentAllAchievementsPage> createState() =>
      _StudentAllAchievementsPageState();
}

class _StudentAllAchievementsPageState
    extends State<StudentAllAchievementsPage> {
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
              title: "كل الإنجازات",
            ),
            SizedBox(height: 20),
            StudentAchievementsBody(),
          ],
        ),
      ),
    );
  }
}
