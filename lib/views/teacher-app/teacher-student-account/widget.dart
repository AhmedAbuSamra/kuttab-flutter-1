import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kuttab/Utils/constants.dart';
import 'package:kuttab/views/componant/app-buttons.dart';
import 'package:kuttab/views/componant/app-text-field.dart';
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
        onPressed: () {
          showBottomSheet(
            context: context,
            builder: (context) {
              return const NewRecordBottomSheet();
            },
          );
        },
      ),
    );
  }
}

class NewRecordBottomSheet extends StatefulWidget {
  const NewRecordBottomSheet({
    Key? key,
  }) : super(key: key);

  @override
  State<NewRecordBottomSheet> createState() => _NewRecordBottomSheetState();
}

class _NewRecordBottomSheetState extends State<NewRecordBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      width: double.infinity,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black38,
            blurRadius: 16,
            offset: Offset(0, 5),
          ),
        ],
      ),
      height: MediaQuery.of(context).size.height * 0.75,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.symmetric(vertical: 16),
              child: Row(
                children: [
                  InkWell(
                    onTap: (() {
                      Navigator.pop(context);
                    }),
                    child: Container(
                      padding: const EdgeInsets.all(4),
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: GRAY_COLOR),
                      height: 24,
                      child: const Icon(
                        Icons.close,
                        size: 16,
                      ),
                    ),
                  ),
                  Expanded(child: Container()),
                  const AppText(
                    text: "تسجيل إنجاز جديد",
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                  Expanded(child: Container()),
                  const SizedBox(width: 24),
                ],
              ),
            ),
            const SizedBox(height: 40),
            Row(
              children: const [
                SizedBox(width: 2),
                Image(
                  image: AssetImage('assets/images/verified-green.png'),
                  height: 15,
                  width: 15,
                ),
                SizedBox(width: 8),
                AppText(
                  text: "نوع الإنجاز",
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                )
              ],
            ),
            const SizedBox(height: 11),
            // field
            AppTextField(
              hintText: "اكتب نوع الإنجاز",
              obscure: false,
            ),
            const SizedBox(height: 40),
            Row(
              children: [
                Expanded(child: Container()),
                const AppText(
                  text: "من",
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
                const SizedBox(width: 8),
                const Sorahpicker(),
                const SizedBox(width: 8),
                const Ayahpicker(),
                Expanded(child: Container()),
                const AppText(
                  text: "إلى",
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
                const SizedBox(width: 8),
                const Sorahpicker(),
                const SizedBox(width: 8),
                const Ayahpicker(),
                Expanded(child: Container()),
              ],
            ),
            const SizedBox(height: 40),
            Row(
              children: const [
                SizedBox(width: 2),
                Icon(
                  Icons.star_rate_rounded,
                  color: PRIMARY_COLOR,
                  size: 20,
                ),
                SizedBox(width: 9),
                AppText(
                  text: "التقييم",
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                )
              ],
            ),
            const SizedBox(height: 11),
            RateField(rate: 2),
            const SizedBox(height: 35),
            Row(
              children: const [
                SizedBox(width: 2),
                Icon(
                  Icons.note_rounded,
                  color: PRIMARY_COLOR,
                  size: 20,
                ),
                SizedBox(width: 9),
                AppText(
                  text: "ملاحظات",
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                )
              ],
            ),
            const SizedBox(height: 11),
            AppTextField(
              hintText: "اكتب ملاحظاتك",
              obscure: false,
            ),
            const SizedBox(height: 35),
            FullColorButton(
              onPressed: (() {
                Get.snackbar("تم تسجيل الإنجاز", "تم تسجيل الإنجاز بنجاح");
                Navigator.pop(context);
              }),
              text: "تسجيل الإنجاز",
            ),
            const SizedBox(height: 24),
          ],
        ),
      ),
    );
  }
}

class RateField extends StatefulWidget {
  RateField({super.key, required this.rate});

  int rate = 0;
  @override
  State<RateField> createState() => _RateFieldState();
}

class _RateFieldState extends State<RateField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 48,
      decoration: BoxDecoration(
        border: Border.all(color: GRAY_COLOR),
        borderRadius: BorderRadius.circular(8),
        color: Colors.white,
      ),
      child: Row(
        children: [
          Expanded(child: Container()),
          Expanded(child: Container()),
          InkWell(
            onTap: () {
              setState(() {
                widget.rate = 1;
              });
            },
            child: RateStar(
              selected: (widget.rate >= 1),
            ),
          ),
          Expanded(child: Container()),
          InkWell(
            onTap: () {
              setState(() {
                widget.rate = 2;
              });
            },
            child: RateStar(
              selected: (widget.rate > 1),
            ),
          ),
          Expanded(child: Container()),
          InkWell(
            onTap: () {
              setState(() {
                widget.rate = 3;
              });
            },
            child: RateStar(
              selected: (widget.rate > 2),
            ),
          ),
          Expanded(child: Container()),
          InkWell(
            onTap: () {
              setState(() {
                widget.rate = 4;
              });
            },
            child: RateStar(
              selected: (widget.rate > 3),
            ),
          ),
          Expanded(child: Container()),
          InkWell(
            onTap: () {
              setState(() {
                widget.rate = 5;
              });
            },
            child: RateStar(
              selected: (widget.rate > 4),
            ),
          ),
          Expanded(child: Container()),
          Expanded(child: Container()),
        ],
      ),
    );
  }
}

class RateStar extends StatefulWidget {
  RateStar({super.key, required this.selected});
  final bool selected;
  @override
  State<RateStar> createState() => _RateStarState();
}

class _RateStarState extends State<RateStar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 17,
      height: 17,
      child: Image.asset(
        (widget.selected)
            ? 'assets/images/StarRate-selected.png'
            : 'assets/images/StarRate-unselected.png',
        width: 16,
        height: 16,
        fit: BoxFit.contain,
      ),
    );
  }
}

class Ayahpicker extends StatefulWidget {
  const Ayahpicker({super.key});

  @override
  State<Ayahpicker> createState() => _AyahpickerState();
}

class _AyahpickerState extends State<Ayahpicker> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 32,
      decoration: BoxDecoration(
        border: Border.all(color: GRAY_COLOR),
        borderRadius: BorderRadius.circular(8),
        color: Colors.white,
      ),
      child: Center(
        child: AppText(
          text: 102.toString(),
          color: Colors.black,
          fontSize: 14,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}

class Sorahpicker extends StatefulWidget {
  const Sorahpicker({super.key, this.sorahName});
  final String? sorahName;
  @override
  State<Sorahpicker> createState() => _SorahpickerState();
}

class _SorahpickerState extends State<Sorahpicker> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showDialog(
          context: context,
          builder: (context) {
            return Container(
              height: 300,
              child: const SorahPickerDialog(),
            );
          },
        );
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        height: 32,
        decoration: BoxDecoration(
          border: Border.all(color: PRIMARY_COLOR),
          borderRadius: BorderRadius.circular(32),
          color: Colors.white,
        ),
        child: Center(
          child: AppText(
            text: widget.sorahName ?? "سورة",
            color: PRIMARY_COLOR,
            fontSize: 14,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}

class SorahPickerDialog extends StatefulWidget {
  const SorahPickerDialog({super.key});

  @override
  State<SorahPickerDialog> createState() => _SorahPickerDialogState();
}

class _SorahPickerDialogState extends State<SorahPickerDialog> {
  @override
  Widget build(BuildContext context) {
    return Container();
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
