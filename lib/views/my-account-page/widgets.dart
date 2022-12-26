import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kuttab/Utils/constants.dart';
import 'package:kuttab/views/componant/app-text.dart';

class MyAccountHomeHeader extends StatefulWidget {
  final String imgPath, name, type;
  const MyAccountHomeHeader(
      {Key? key, required this.imgPath, required this.name, required this.type})
      : super(key: key);

  @override
  State<MyAccountHomeHeader> createState() => _MyAccountHomeHeaderState();
}

class _MyAccountHomeHeaderState extends State<MyAccountHomeHeader> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double headerHeight = screenWidth * 0.32;
    return Container(
      margin: EdgeInsets.only(top: 18),
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          SizedBox(
            width: screenWidth,
            height: headerHeight + screenWidth * 0.17,
          ),
          //white background
          Positioned(
            top: screenWidth * 0.17,
            child: Container(
              width: screenWidth,
              height: headerHeight,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(32),
                  topRight: Radius.circular(32),
                ),
              ),
            ),
          ),
          //logo graphic here
          SizedBox(
            width: screenWidth * 0.35,
            height: screenWidth * 0.35,
            child: Stack(
              alignment: Alignment.center,
              children: [
                //white cercle
                Container(
                  width: screenWidth * 0.29,
                  height: screenWidth * 0.29,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(screenWidth * 0.29),
                    color: Colors.white,
                  ),
                ),
                //logo here
                Container(
                  width: screenWidth * 0.29,
                  height: screenWidth * 0.29,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(widget.imgPath),
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                ),
              ],
            ),
          ),

          //column for School name and address
          Positioned(
            top: screenWidth * 0.17 + headerHeight * 0.5,
            child: SizedBox(
              width: screenWidth,
              height: headerHeight * 0.5,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AppText(
                    text: widget.name,
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: PRIMARY_DARK_COLOR,
                  ),
                  const SizedBox(height: 4),
                  AppText(
                    text: widget.type,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: PRIMARY_DARK_COLOR,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class MyAccountBody extends StatefulWidget {
  final String className, coTeacher, numberOfStudents;
  const MyAccountBody(
      {Key? key,
      required this.className,
      required this.coTeacher,
      required this.numberOfStudents})
      : super(key: key);

  @override
  State<MyAccountBody> createState() => _MyAccountBodyState();
}

class _MyAccountBodyState extends State<MyAccountBody> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      height: MediaQuery.of(context).size.height - 108 - (screenWidth * 0.49),
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(children: [
          ClassInformation(
            className: widget.className,
            coTeacher: widget.coTeacher,
            numberOfStudents: widget.numberOfStudents,
          ),
          const SizedBox(height: 40),
          const SettingsTable(),
          const SizedBox(height: 40),
          const LogoutButton(),
        ]),
      ),
    );
  }
}

class ClassInformation extends StatefulWidget {
  final String className, coTeacher, numberOfStudents;
  const ClassInformation(
      {Key? key,
      required this.className,
      required this.coTeacher,
      required this.numberOfStudents})
      : super(key: key);

  @override
  State<ClassInformation> createState() => _ClassInformationState();
}

class _ClassInformationState extends State<ClassInformation> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          SizedBox(
            height: 40,
            child: Row(
              children: [
                const SizedBox(width: 16),
                const AppText(
                  text: 'بيانات الحلقة',
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
                Expanded(child: Container()),
              ],
            ),
          ),
          const SizedBox(height: 8),
          Container(
            height: 122,
            width: screenWidth - 32,
            child: Stack(
              children: [
                Positioned(
                  top: 0,
                  right: 0,
                  child: Container(
                    height: 122,
                    width: screenWidth - 32,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(24),
                      ),
                      border: Border.all(
                        color: Color(0xFFe5e5e5),
                        width: 1,
                      ),
                    ),
                    child: Column(
                      children: [
                        bodyCell(screenWidth, widget.className),
                        const Divider(height: 0),
                        bodyCell(screenWidth, widget.coTeacher),
                        const Divider(height: 0),
                        bodyCell(screenWidth, widget.numberOfStudents),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 0,
                  right: 0,
                  child: Container(
                    height: 122,
                    width: screenWidth * 0.33,
                    decoration: BoxDecoration(
                      color: Color(0xFFf4f4f4),
                      borderRadius: BorderRadius.all(
                        Radius.circular(24),
                      ),
                      border: Border.all(
                        color: Color(0xFFe5e5e5),
                        width: 1,
                      ),
                    ),
                    child: Column(
                      children: [
                        headerCell("اسم الحلقة"),
                        const Divider(height: 0),
                        headerCell("مساعد المحفظ"),
                        const Divider(height: 0),
                        headerCell("عدد الطلاب"),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Container bodyCell(double screenWidth, String text) {
    return Container(
      padding: EdgeInsets.only(right: screenWidth * 0.35),
      height: 40,
      child: Container(
        alignment: Alignment.centerRight,
        child: AppText(
          textAlign: TextAlign.right,
          text: text,
          fontSize: 12,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }

  SizedBox headerCell(String text) {
    return SizedBox(
      height: 40,
      child: Center(
        child: AppText(
          text: text,
          fontSize: 12,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}

class SettingsTable extends StatefulWidget {
  const SettingsTable({Key? key}) : super(key: key);

  @override
  State<SettingsTable> createState() => _SettingsTableState();
}

class _SettingsTableState extends State<SettingsTable> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          Container(
            height: (48 * 3) + 2,
            width: screenWidth - 32,
            child: Stack(
              children: [
                Positioned(
                  top: 0,
                  right: 0,
                  child: Container(
                    height: (48 * 3) + 2,
                    width: screenWidth - 32,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(24),
                      ),
                      border: Border.all(
                        color: Color(0xFFe5e5e5),
                        width: 1,
                      ),
                    ),
                    child: Column(
                      children: [
                        InkWell(
                          onTap: () {
                            Get.toNamed("/PersonalInformationPage");
                          },
                          child: bodyCell(
                              "المعلومات الشخصية", Icons.person_rounded),
                        ),
                        const Divider(height: 0),
                        InkWell(
                          onTap: () {
                            Get.toNamed("/SettingsPage");
                          },
                          child: bodyCell(
                            "الإعدادات",
                            Icons.settings_rounded,
                          ),
                        ),
                        const Divider(height: 0),
                        InkWell(
                          child: bodyCell(
                            "حول التطبيق",
                            Icons.info_rounded,
                          ),
                          onTap: () {
                            Get.toNamed("/AboutPage");
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Container bodyCell(String text, IconData icon) {
    return Container(
      height: 48,
      child: Container(
          alignment: Alignment.centerRight,
          child: Row(
            children: [
              const SizedBox(width: 17.5),
              Icon(
                icon,
                color: PRIMARY_COLOR,
                size: 20,
              ),
              const SizedBox(width: 9.5),
              AppText(
                textAlign: TextAlign.right,
                text: text,
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: PRIMARY_COLOR,
              ),
              Expanded(child: Container()),
              const Icon(
                Icons.arrow_forward_ios_rounded,
                color: PRIMARY_COLOR,
                size: 20,
              ),
              const SizedBox(width: 25),
            ],
          )),
    );
  }
}

class LogoutButton extends StatefulWidget {
  const LogoutButton({Key? key}) : super(key: key);

  @override
  State<LogoutButton> createState() => _LogoutButtonState();
}

class _LogoutButtonState extends State<LogoutButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 25),
      child: Row(
        children: const [
          Icon(
            Icons.logout_rounded,
            color: LOGOUT,
            size: 20,
          ),
          SizedBox(width: 16),
          AppText(
            text: "تسجيل الخروج",
            fontSize: 14,
            fontWeight: FontWeight.w600,
            color: LOGOUT,
          )
        ],
      ),
    );
  }
}
