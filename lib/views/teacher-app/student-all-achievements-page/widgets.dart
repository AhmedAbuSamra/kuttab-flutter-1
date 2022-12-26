import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kuttab/Utils/constants.dart';
import 'package:kuttab/views/componant/app-text.dart';
import 'package:kuttab/views/componant/one-day-achiviments-card.dart';

//create date range picker widget
class DateRangPicker extends StatefulWidget {
  const DateRangPicker({Key? key}) : super(key: key);

  @override
  State<DateRangPicker> createState() => _DateRangPickerState();
}

class _DateRangPickerState extends State<DateRangPicker> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 25),
      child: SizedBox(
        height: 50,
        child: Stack(
          children: [
            Row(
              children: [
                const SizedBox(width: 25),
                IconButton(
                  onPressed: () {
                    Get.back();
                  },
                  icon: const Icon(
                    Icons.arrow_back_ios_rounded,
                    color: Colors.black,
                    size: 15,
                  ),
                ),
                Expanded(child: Container()),
                IconButton(
                  onPressed: () {
                    Get.back();
                  },
                  icon: const Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: Colors.black,
                    size: 15,
                  ),
                ),
                const SizedBox(width: 25),
              ],
            ),
            const Center(
              child: AppText(
                text: 'السبت 1/1/2021  - الخميس 1/1/2021',
                color: Colors.black,
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class StudentAchievementsBody extends StatefulWidget {
  const StudentAchievementsBody({Key? key}) : super(key: key);

  @override
  State<StudentAchievementsBody> createState() =>
      _StudentAchievementsBodyState();
}

class _StudentAchievementsBodyState extends State<StudentAchievementsBody> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(32),
        ),
      ),
      child: Column(
        children: [
          DateRangPicker(),
          SizedBox(height: 20),
          Container(
            // 40+50+20+32+20
            height: MediaQuery.of(context).size.height - 205,
            padding: const EdgeInsets.symmetric(horizontal: 17.5),
            child: StudentAchievementsList(),
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
    return SingleChildScrollView(
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
        ],
      ),
    );
  }
}
