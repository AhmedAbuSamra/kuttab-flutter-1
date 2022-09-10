import 'package:flutter/material.dart';
import 'package:kuttab/views/componant/app-top-bar.dart';
import 'package:kuttab/views/personal-information-page/widgets.dart';

class PersonalInformationPage extends StatefulWidget {
  const PersonalInformationPage({Key? key}) : super(key: key);

  @override
  State<PersonalInformationPage> createState() =>
      _PersonalInformationPageState();
}

class _PersonalInformationPageState extends State<PersonalInformationPage> {
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
                title: "المعلومات الشخصية",
              ),
              SizedBox(height: 16),
              PersonalInformationBody(),
            ],
          ),
        ),
      ),
    );
  }
}
