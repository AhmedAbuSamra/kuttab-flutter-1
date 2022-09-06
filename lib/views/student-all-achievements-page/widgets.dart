import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kuttab/Utils/constants.dart';
import 'package:kuttab/views/componant/app-text.dart';

class TopBar extends StatefulWidget {
  const TopBar({Key? key}) : super(key: key);

  @override
  State<TopBar> createState() => _TopBarState();
}

class _TopBarState extends State<TopBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: Stack(
        children: [
          Container(
            child: Row(
              children: [
                const SizedBox(width: 25),
                IconButton(
                  onPressed: () {
                    Get.back();
                  },
                  icon: const Icon(
                    Icons.arrow_back_ios_rounded,
                    color: PRIMARY_DARK_COLOR,
                  ),
                ),
                Expanded(child: Container()),
              ],
            ),
          ),
          const Center(
            child: AppText(
              text: 'كل الإنجازات',
              color: PRIMARY_DARK_COLOR,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}

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
    return Column(
      children: [
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
    );
  }
}

class OneDayAchiementCard extends StatefulWidget {
  final String imgPath, presentStatus;
  final List<Map<String, dynamic>>? performance;
  final int? rate;
  const OneDayAchiementCard(
      {Key? key,
      required this.imgPath,
      required this.presentStatus,
      this.performance,
      this.rate})
      : super(key: key);

  @override
  State<OneDayAchiementCard> createState() => _OneDayAchiementCardState();
}

class _OneDayAchiementCardState extends State<OneDayAchiementCard> {
  Map<String, Color> colors = {
    "Present": PRESENT,
    "NoReciet": NO_RECIET,
    "Absent": ABSENT,
  };

  Map<String, String> performances = {
    "NoReciet": "لم يسمع",
    "Absent": "غائب",
    "Review": "مراجعة",
    "memorized": "حفظ",
    "Recitation": "تلاوة",
  };

  @override
  Widget build(BuildContext context) {
    double cardHeight = (widget.performance != null)
        ? ((34 * widget.performance!.length) + 74).toDouble()
        : 108;
    double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Row(
        children: [
          Container(
            height: cardHeight,
            child: Column(
              children: [
                Container(
                  height: 15,
                  width: 15,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Icon(
                    Icons.date_range,
                    color: Colors.white,
                    size: 10,
                  ),
                ),
                Container(
                  height: (widget.performance != null)
                      ? ((34 * widget.performance!.length) + 59).toDouble()
                      : 93,
                  width: 1,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/grey-line.png"),
                      fit: BoxFit.contain,
                      opacity: 0.5,
                      repeat: ImageRepeat.repeatY,
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            height: cardHeight,
            margin: const EdgeInsets.symmetric(horizontal: 5.5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  child: AppText(
                    text: "السبت 1/1/2021",
                    color: Colors.black,
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 17),
                Container(
                  height: (widget.performance != null)
                      ? ((34 * widget.performance!.length) + 16).toDouble()
                      : 50,
                  width: screenWidth - 61,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: colors[widget.presentStatus]!,
                  ),
                  child: Container(
                    margin: EdgeInsets.only(right: 8),
                    padding: EdgeInsets.only(top: 16),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: Colors.white.withOpacity(0.8),
                    ),
                    child: MediaQuery.removePadding(
                      context: context,
                      removeTop: true,
                      child: ListView.separated(
                        physics: const NeverScrollableScrollPhysics(),
                        separatorBuilder: (context, index) {
                          return Container(
                            height: 16,
                          );
                        },
                        itemCount: (widget.performance != null)
                            ? widget.performance!.length
                            : 1,
                        itemBuilder: (widget.presentStatus == "Present")
                            ? (context, index) {
                                return Container(
                                  height: 18,
                                  child: Row(
                                    children: [
                                      const SizedBox(width: 16),
                                      Container(
                                        width: 45,
                                        child: AppText(
                                          text: performances[
                                                  widget.performance![index]
                                                      ["performanceType"]]
                                              .toString(),
                                          color: colors[widget.presentStatus]!,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      const SizedBox(width: 5),
                                      Container(
                                        child: AppText(
                                          text: widget.performance![index]
                                                  ["performance"]
                                              .toString(),
                                          color: colors[widget.presentStatus]!,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      Expanded(
                                        child: Container(),
                                      ),
                                      Container(
                                        height: 18,
                                        width: 34,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(20),
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            AppText(
                                              text: widget.performance![index]
                                                      ["rate"]
                                                  .toString(),
                                              color: RATE_STAR,
                                              fontSize: 10,
                                              fontWeight: FontWeight.w700,
                                            ),
                                            const SizedBox(width: 4),
                                            Icon(
                                              Icons.star,
                                              color: RATE_STAR,
                                              size: 12,
                                            ),
                                          ],
                                        ),
                                      ),
                                      const SizedBox(width: 16),
                                    ],
                                  ),
                                );
                              }
                            : (context, index) {
                                return Container(
                                  padding: EdgeInsets.symmetric(horizontal: 16),
                                  child: AppText(
                                    text: performances[widget.presentStatus]
                                        .toString(),
                                    color: colors[widget.presentStatus]!,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                  ),
                                );
                              },
                      ),
                    ),
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
