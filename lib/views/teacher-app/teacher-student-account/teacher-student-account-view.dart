import 'package:flutter/material.dart';
import 'package:kuttab/ViewModels/student-account-viewModel.dart';
import 'package:kuttab/views/componant/app-top-bar.dart';
import 'package:provider/provider.dart';
import './widget.dart';

class TeacherStudentAccountPage extends StatefulWidget {
  const TeacherStudentAccountPage({Key? key}) : super(key: key);

  @override
  State<TeacherStudentAccountPage> createState() =>
      _TeacherStudentAccountPageState();
}

class _TeacherStudentAccountPageState extends State<TeacherStudentAccountPage> {
  final StudentAccountViewModel studentAccountViewModel =
      StudentAccountViewModel();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: ChangeNotifierProvider<StudentAccountViewModel>(
        create: (BuildContext context) => studentAccountViewModel,
        child: Consumer<StudentAccountViewModel>(
          builder: (context, StudentAccountViewModel value, Widget? child) {
            return Container(
              width: MediaQuery.of(context).size.width,
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
                    title: 'حساب الطالب',
                  ),
                  SizedBox(height: 20),
                  StudentProfileBody(),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}


// Container(
//         width: MediaQuery.of(context).size.width,
//         // height: MediaQuery.of(context).size.height,
//         decoration: const BoxDecoration(
//           color: Color(0xFFf4f4f4),
//           image: DecorationImage(
//             image: AssetImage('assets/images/decoration-grey.png'),
//             fit: BoxFit.fitWidth,
//             alignment: Alignment.topCenter,
//             opacity: 0.1,
//           ),
//         ),
//         child: Column(
//           children: const [
//             SizedBox(height: 40),
//             AppTopBar(
//               title: 'حساب الطالب',
//             ),
//             SizedBox(height: 20),
//             StudentProfileBody(),
//           ],
//         ),
//       ),