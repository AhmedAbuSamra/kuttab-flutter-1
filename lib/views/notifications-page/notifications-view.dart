import 'package:flutter/material.dart';
import 'package:kuttab/views/componant/app-top-bar.dart';
import 'package:kuttab/views/notifications-page/widgets.dart';

class NotificationsPage extends StatefulWidget {
  const NotificationsPage({super.key});

  @override
  State<NotificationsPage> createState() => _NotificationsPageState();
}

class _NotificationsPageState extends State<NotificationsPage> {
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
          color: Color(0xfff4f4f4),
          image: DecorationImage(
            image: AssetImage('assets/images/decoration-grey.png'),
            fit: BoxFit.fitWidth,
            alignment: Alignment.topCenter,
            opacity: 0.1,
          ),
        ),
        child: Column(
          children: [
            SizedBox(height: 40),
            AppTopBar(
              title: "الإشعارات",
            ),
            NotificationsPageBudy(),
          ],
        ),
      ),
    );
  }
}
