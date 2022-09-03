// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:flutter/material.dart';
import 'package:kuttab/Utils/constants.dart';
import 'package:kuttab/views/componant/app-buttons.dart';
import 'package:kuttab/views/componant/app-text.dart';
import 'package:kuttab/views/componant/search-field.dart';

class TopBar extends StatefulWidget {
  const TopBar(
      {Key? key, required this.imgPath, required this.haveNotification})
      : super(key: key);

  final String imgPath;
  final bool haveNotification;

  @override
  State<TopBar> createState() => _TopBarState();
}

class _TopBarState extends State<TopBar> {
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          Container(
            width: _width * 0.14,
            height: _width * 0.14,
            //add img here
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              image: DecorationImage(
                image: AssetImage(widget.imgPath),
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
          const SizedBox(width: 8),
          SizedBox(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                AppText(
                  text: "أحمد محمد عبد السميع",
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
                AppText(
                  text: "معلم",
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ],
            ),
          ),
          Expanded(child: Container()),
          //create notification icon here
          Container(
            width: _width * 0.11,
            height: _width * 0.11,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: PRIMARY_DARK_COLOR,
            ),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Positioned(
                  child: Container(
                    width: _width * 0.07,
                    height: _width * 0.07,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      image: const DecorationImage(
                        image: AssetImage(NOTIFICATION_ICON),
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                  ),
                ),
                widget.haveNotification
                    ? Positioned(
                        right: _width * 0.02,
                        top: _width * 0.02,
                        child: Container(
                          width: _width * 0.025,
                          height: _width * 0.025,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: Colors.red,
                          ),
                        ),
                      )
                    : Container(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class TeacherHomeHeader extends StatefulWidget {
  const TeacherHomeHeader(
      {Key? key,
      required this.imgPath,
      required this.schoolName,
      required this.schoolAddress})
      : super(key: key);

  final String imgPath;
  final String schoolName;
  final String schoolAddress;

  @override
  State<TeacherHomeHeader> createState() => _TeacherHomeHeaderState();
}

class _TeacherHomeHeaderState extends State<TeacherHomeHeader> {
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    double headerHeight = _width * 0.32;
    return Container(
      margin: EdgeInsets.only(top: 18),
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          SizedBox(
            width: _width,
            height: headerHeight + _width * 0.17,
          ),
          //white background
          Positioned(
            top: _width * 0.17,
            child: Container(
              width: _width,
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
            width: _width * 0.35,
            height: _width * 0.35,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  width: _width * 0.35,
                  height: _width * 0.35,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(_width * 0.35),
                    border: Border.all(
                      color: Colors.white,
                      width: 2,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        blurRadius: 10,
                        offset: Offset(0, 0),
                      ),
                    ],
                  ),
                ),
                //white cercle
                Container(
                  width: _width * 0.29,
                  height: _width * 0.29,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(_width * 0.29),
                    color: Colors.white,
                  ),
                ),
                //logo here
                Container(
                  width: _width * 0.18,
                  height: _width * 0.18,
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
            top: _width * 0.17 + headerHeight * 0.5,
            child: SizedBox(
              width: _width,
              height: headerHeight * 0.5,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AppText(
                    text: widget.schoolName,
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: PRIMARY_DARK_COLOR,
                  ),
                  const SizedBox(height: 4),
                  AppText(
                    text: widget.schoolAddress,
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
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

class TeacherHomeBody extends StatefulWidget {
  const TeacherHomeBody({Key? key}) : super(key: key);

  @override
  State<TeacherHomeBody> createState() => _TeacherHomeBodyState();
}

class _TeacherHomeBodyState extends State<TeacherHomeBody> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          const SizedBox(height: 24),
          //row for buttons (record attendance, absence permission)
          Row(
            children: [
              SizedBox(
                height: 48,
                width: (MediaQuery.of(context).size.width - 40) * 0.55,
                child: WhiteIconButtton(
                  onPressed: () {},
                  icon: const Icon(Icons.add),
                  text: "تسجيل حضور",
                ),
              ),
              const SizedBox(width: 8),
              SizedBox(
                height: 48,
                width: (MediaQuery.of(context).size.width - 40) * 0.45,
                child: WhiteIconButtton(
                  onPressed: () {},
                  icon: const Icon(Icons.add),
                  text: "إذن غياب",
                ),
              ),
            ],
          ),
          const SizedBox(height: 32),
          //row for student and Search
          Row(
            children: [
              const AppText(
                text: "الطلاب",
                color: Colors.black,
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
              Expanded(child: Container()),
              SizedBox(
                height: 40,
                width: (MediaQuery.of(context).size.width - 40) * 0.18,
                child: FullColorIconButtton(
                  onPressed: () {},
                  icon: const Icon(Icons.add),
                ),
              ),
              const SizedBox(width: 8),
              SearchField(),
            ],
          ),
          const SizedBox(height: 16),
          // date container
          Container(
            width: MediaQuery.of(context).size.width,
            height: 24,
            decoration: BoxDecoration(
              color: PRIMARY_COLOR.withOpacity(0.1),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 15,
                  height: 15,
                  decoration: BoxDecoration(
                    color: PRIMARY_COLOR,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Icon(
                    size: 10,
                    Icons.calendar_today,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(width: 8),
                const AppText(
                  text: "الأحد  ",
                  color: PRIMARY_COLOR,
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
                const AppText(
                  text: "2021/10/10",
                  color: PRIMARY_COLOR,
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),
          // list of students
          const StudentCard(
            name: "محمد عبد الله",
            status: "Present",
            performance: "الحاقة 1 - الحاقة 20",
            imgPath: "assets/images/kid1.jpg",
            rate: 4,
          ),
        ],
      ),
    );
  }
}

//create a class for the student card
class StudentCard extends StatefulWidget {
  final String name, imgPath, status;
  final String? performance;
  final int? rate;
  const StudentCard(
      {Key? key,
      required this.name,
      required this.imgPath,
      this.performance,
      required this.status,
      this.rate})
      : super(key: key);

  @override
  State<StudentCard> createState() => _StudentCardState();
}

class _StudentCardState extends State<StudentCard> {
  @override
  Widget build(BuildContext context) {
    Map<String, Color> colors = {
      "Present": PRESENT,
      "NoReciet": NO_RECIET,
      "Absent": ABSENT,
    };
    Map<String, String> performances = {
      "Present": "حفظ : ",
      "NoReciet": "لم يسمع",
      "Absent": "غائب",
    };
    return Container(
      height: 96,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.1),
        borderRadius: BorderRadius.circular(24),
      ),
      padding: EdgeInsets.all(16),
      child: Row(
        children: [
          Container(
            width: 64,
            height: 64,
            decoration: BoxDecoration(
              border: Border.all(
                  color: colors[widget.status] ?? Colors.white, width: 2),
              borderRadius: BorderRadius.circular(24),
              image: DecorationImage(
                image: AssetImage(widget.imgPath),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(width: 16),
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //row for name and rate
                Container(
                  width: MediaQuery.of(context).size.width * 0.6,
                  child: Row(
                    children: [
                      AppText(
                        text: widget.name,
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                      ),
                      Expanded(child: Container()),
                      widget.rate != null
                          ? Container(
                              height: 18,
                              width: 34,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  AppText(
                                    text: widget.rate.toString(),
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
                            )
                          : Container(),
                    ],
                  ),
                ),
                const SizedBox(height: 8),
                //row for status and performance
                Container(
                  width: MediaQuery.of(context).size.width * 0.6,
                  child: Row(
                    children: [
                      AppText(
                        text: performances[widget.status] ?? " ",
                        color: colors[widget.status] ?? Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                      ),
                      widget.status == "Present"
                          ? AppText(
                              text: widget.performance,
                              color: Colors.black,
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                            )
                          : Container(),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
