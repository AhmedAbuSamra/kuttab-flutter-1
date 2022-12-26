import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kuttab/Utils/constants.dart';
import 'package:kuttab/views/componant/app-buttons.dart';
import 'package:kuttab/views/componant/app-text.dart';
import 'package:kuttab/views/componant/one-day-achiviments-card.dart';

class StudentProfileBody extends StatefulWidget {
  const StudentProfileBody({Key? key}) : super(key: key);

  @override
  State<StudentProfileBody> createState() => _StudentProfileBodyState();
}

class _StudentProfileBodyState extends State<StudentProfileBody> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(32),
        ),
      ),
      child: Column(
        children: [
          const SizedBox(height: 32),
          const StudentProfileHeader(),
          const SizedBox(height: 24),
          const PerformanceBar(),
          const SizedBox(height: 32),
          Container(
            height: MediaQuery.of(context).size.height - 334,
            // 40+50+20+32+84+24+52+32
            child: SingleChildScrollView(
              child: Column(
                children: [
                  recordNewPerformanceButton(width),
                  const SizedBox(height: 24),
                  performanceRow(width),
                  const SizedBox(height: 16),
                  const StudentAchievementsList(),
                  const SizedBox(height: 24),
                  const ReportCard(),
                  const SizedBox(height: 24),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Container performanceRow(double width) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: width * 0.05),
      child: Row(
        children: [
          AppText(
            text: 'أحدث الإنجازات',
            fontWeight: FontWeight.w600,
            color: Colors.black,
            fontSize: 14,
          ),
          Expanded(child: Container()),
          InkWell(
            onTap: () {
              Get.toNamed('/StudentAllAchievementsPage');
            },
            child: Container(
              child: Row(
                children: [
                  AppText(
                    text: 'عرض الكل',
                    fontWeight: FontWeight.w600,
                    color: PRIMARY_COLOR,
                  ),
                  const SizedBox(width: 10),
                  const Icon(
                    Icons.arrow_forward_ios,
                    color: PRIMARY_COLOR,
                    size: 16,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Container recordNewPerformanceButton(double width) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: width * 0.05),
      child: FullColorIconButtton(
        icon: const Icon(
          Icons.check_circle_rounded,
          color: Colors.white,
        ),
        text: 'تسجيل إنجاز جديدة',
        onPressed: () {},
      ),
    );
  }
}

class StudentProfileHeader extends StatefulWidget {
  const StudentProfileHeader({Key? key}) : super(key: key);

  @override
  State<StudentProfileHeader> createState() => _StudentProfileHeaderState();
}

class _StudentProfileHeaderState extends State<StudentProfileHeader> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      height: 84,
      padding: EdgeInsets.symmetric(horizontal: width / 11),
      child: Row(
        children: [
          Container(
            height: width * 0.233,
            width: width * 0.233,
            decoration: const BoxDecoration(
              color: Color(0xFFf4f4f4),
              image: DecorationImage(
                image: AssetImage('assets/images/kid1.jpg'),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(24),
              ),
            ),
          ),
          const SizedBox(width: 16),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppText(
                  text: 'محمد عبد الله',
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                ),
                const SizedBox(height: 8),
                InkWell(
                  onTap: () {
                    Get.toNamed("/StudentInformationPage");
                  },
                  child: AppText(
                    text: 'تعديل الحساب',
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: PRIMARY_COLOR,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class PerformanceBar extends StatefulWidget {
  const PerformanceBar({Key? key}) : super(key: key);

  @override
  State<PerformanceBar> createState() => _PerformanceBarState();
}

class _PerformanceBarState extends State<PerformanceBar> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.1333),
      height: 52,
      child: Row(
        children: [
          performanceCell(screenWidth, 'الحفظ', '90'),
          Expanded(child: Container()),
          performanceCell(screenWidth, 'المراجعة', '30'),
          Expanded(child: Container()),
          performanceCell(screenWidth, 'التلاوة', '60'),
        ],
      ),
    );
  }

  Container performanceCell(
      double screenWidth, String performanceType, String performanceValue) {
    return Container(
      width: screenWidth * 0.133,
      child: Column(
        children: [
          AppText(
            text: performanceType,
            fontSize: 12,
            fontWeight: FontWeight.w500,
            color: PRIMARY_DARK_COLOR,
          ),
          AppText(
            text: performanceValue,
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: PRIMARY_DARK_COLOR,
          ),
          AppText(
            text: 'صفحة',
            fontSize: 10,
            fontWeight: FontWeight.w400,
            color: PRIMARY_DARK_COLOR.withOpacity(0.5),
          ),
        ],
      ),
    );
  }
}

class StudentAchievementsList extends StatefulWidget {
  const StudentAchievementsList({Key? key}) : super(key: key);

  @override
  State<StudentAchievementsList> createState() =>
      _StudentAchievementsListState();
}

class _StudentAchievementsListState extends State<StudentAchievementsList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: const [
          OneDayAchiementCard(
            imgPath: "assets/images/kid1.png",
            presentStatus: "Present",
            performance: [
              {
                "performanceType": "memorized",
                "performance": "الحاقة 11 - الحاقة 20",
                "rate": 5
              },
              {
                "performanceType": "Review",
                "performance": "الحاقة 1 - الحاقة 10",
                "rate": 4
              },
              {
                "performanceType": "Recitation",
                "performance": "الحاقة 21 - الحاقة 30",
                "rate": 3
              }
            ],
          ),
          OneDayAchiementCard(
            imgPath: "assets/images/kid1.png",
            presentStatus: "NoReciet",
          ),
          OneDayAchiementCard(
            imgPath: "assets/images/kid1.png",
            presentStatus: "Present",
            performance: [
              {
                "performanceType": "memorized",
                "performance": "الحاقة 11 - الحاقة 20",
                "rate": 5
              },
              {
                "performanceType": "Review",
                "performance": "الحاقة 1 - الحاقة 10",
                "rate": 4
              },
              {
                "performanceType": "Recitation",
                "performance": "الحاقة 21 - الحاقة 30",
                "rate": 3
              }
            ],
          ),
          OneDayAchiementCard(
            imgPath: "assets/images/kid1.png",
            presentStatus: "Absent",
          ),
        ],
      ),
    );
  }
}

class ReportCard extends StatefulWidget {
  const ReportCard({Key? key}) : super(key: key);

  @override
  State<ReportCard> createState() => ReportCardState();
}

class ReportCardState extends State<ReportCard> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    print(screenWidth);
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          SizedBox(
            height: 40,
            child: Row(
              children: [
                AppText(
                  text: 'تقرير مدة',
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
                Expanded(child: Container()),
                DatePickerRow(),
              ],
            ),
          ),
          const SizedBox(height: 16),
          Container(
            height: 202,
            width: screenWidth - 32,
            child: Stack(
              children: [
                Positioned(
                  top: 0,
                  right: 0,
                  child: Container(
                    height: 202,
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
                        bodyCell(screenWidth, "الحاقة 16 - الحاقة 20"),
                        const Divider(height: 0),
                        bodyCell(screenWidth, "القارعة 11 - القارعة 15"),
                        const Divider(height: 0),
                        bodyCell(screenWidth, "الناس 1 - الناس 3"),
                        const Divider(height: 0),
                        bodyCell(screenWidth, "4 أيام"),
                        const Divider(height: 0),
                        bodyCell(screenWidth, "3 أيام"),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 0,
                  right: 0,
                  child: Container(
                    height: 202,
                    width: screenWidth * 0.25,
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
                        headerCell("الحفظ"),
                        const Divider(height: 0),
                        headerCell("المراجعة"),
                        const Divider(height: 0),
                        headerCell("التلاوة"),
                        const Divider(height: 0),
                        headerCell("أيام الحضور"),
                        const Divider(height: 0),
                        headerCell("أيام الغياب"),
                      ],
                    ),
                  ),
                ),
                //first row for الحفظ
                Container(),
                //second row for المراجعة
                Container(),
                //third row for التلاوة
                Container(),
                //forth row for الحضور
                Container(),
                //fifth row for الغياب
                Container(),
              ],
            ),
          )
        ],
      ),
    );
  }

  Container bodyCell(double screenWidth, String text) {
    return Container(
      padding: EdgeInsets.only(right: screenWidth * 0.27),
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

class DatePickerRow extends StatefulWidget {
  DatePickerRow({Key? key}) : super(key: key);

  @override
  State<DatePickerRow> createState() => _DatePickerRowState();
}

class _DatePickerRowState extends State<DatePickerRow> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      height: 40,
      child: Row(
        children: [
          datePickerButton(screenWidth),
          const AppText(
            text: ' - ',
            fontSize: 14,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
          datePickerButton(screenWidth),
        ],
      ),
    );
  }

  Container datePickerButton(double screenWidth) {
    return Container(
      height: 40,
      width: screenWidth * 0.3,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(40),
        border: Border.all(color: Colors.grey.withOpacity(0.5), width: 1),
      ),
      child: Row(
        children: [
          Expanded(child: Container()),
          const AppText(
            text: "10/10/2021",
            fontSize: 10,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
          const SizedBox(width: 10),
          const Icon(
            Icons.calendar_month_rounded,
            color: PRIMARY_COLOR,
            size: 14,
          ),
          Expanded(child: Container()),
        ],
      ),
    );
  }
}
