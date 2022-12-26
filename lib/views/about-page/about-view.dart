import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kuttab/views/about-page/widgets.dart';
import 'package:kuttab/views/componant/app-top-bar.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  Map<String, String> titles = {
    'helpPage': 'المساعدة',
    'privacyPage': 'الخصوصية و الأمان',
  };
  Map<String, Widget> Bodies = {
    'helpPage': const HelpPageBody(),
    'privacyPage': const PrivacyPageBody(),
  };
  @override
  Widget build(BuildContext context) {
    String? _type = Get.arguments;
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
          children: [
            const SizedBox(height: 40),
            AppTopBar(
              title: titles[_type] ?? 'حول التطبيق',
            ),
            const SizedBox(height: 16),
            Bodies[_type] ?? const AboutPageBody(),
          ],
        ),
      ),
    );
  }
}
