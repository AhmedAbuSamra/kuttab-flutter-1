import 'package:flutter/material.dart';
import 'package:kuttab/views/componant/app-top-bar.dart';
import 'package:kuttab/views/my-account-page/widgets.dart';

class MyAccountPage extends StatefulWidget {
  const MyAccountPage({Key? key}) : super(key: key);

  @override
  State<MyAccountPage> createState() => _MyAccountPageState();
}

class _MyAccountPageState extends State<MyAccountPage> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    double bodyHeight = screenHeight - (screenWidth * 0.49) - 110;
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          color: Color(0xFFEAF8F0),
          image: DecorationImage(
            image: AssetImage('assets/images/decoration-grey.png'),
            colorFilter: ColorFilter.mode(Color(0xFFEAF8F0), BlendMode.dstATop),
            fit: BoxFit.fitWidth,
            alignment: Alignment.topCenter,
            opacity: 0.1,
          ),
        ),
        child: Column(
          children: [
            SizedBox(height: 40),
            AppTopBar(
              title: "حسابي",
            ),
            MyAccountHomeHeader(
              imgPath: "assets/images/personal-pic.png",
              name: "محمد عبد الله",
              type: "معلم",
            ),
            Container(
              color: Colors.white,
              child: MyAccountBody(
                className: "الصف الثاني",
                coTeacher: "محمد عبد الله",
                numberOfStudents: "20",
              ),
            )
          ],
        ),
      ),
    );
  }
}
