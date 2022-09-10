import 'package:flutter/material.dart';
import 'package:kuttab/views/componant/app-text.dart';
import 'package:kuttab/views/componant/app-top-bar.dart';
import 'package:kuttab/views/settings-page/widgets.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
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
            children: [
              const SizedBox(height: 40),
              const AppTopBar(
                title: 'الإعدادات',
              ),
              const SizedBox(height: 16),
              SettingPageBody(
                isSetingsOn: false,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
