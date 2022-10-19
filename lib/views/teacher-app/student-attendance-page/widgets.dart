import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kuttab/Utils/constants.dart';
import 'package:kuttab/views/componant/app-buttons.dart';
import 'package:kuttab/views/componant/app-text.dart';

class StudentAttendanceBody extends StatefulWidget {
  const StudentAttendanceBody({Key? key}) : super(key: key);

  @override
  State<StudentAttendanceBody> createState() => _StudentAttendanceBodyState();
}

class _StudentAttendanceBodyState extends State<StudentAttendanceBody> {
  List _students = [];

  Future loadJsonData() async {
    var propertyJsonText =
        await rootBundle.loadString('assets/json/students.json');
    setState(() => _students = json.decode(propertyJsonText));
  }

  @override
  void initState() {
    loadJsonData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Container(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(top: 32, left: 16, right: 16, bottom: 16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(32), topRight: Radius.circular(32)),
            ),
            child: WhiteIconButtton(
              icon: Icon(Icons.notifications),
              text: 'إرسال تنبيه للغائبين',
              onPressed: () {},
            ),
          ),
          Container(
            height: height - 210,
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            child: MediaQuery.removePadding(
              context: context,
              removeTop: true,
              child: ListView.separated(
                padding: EdgeInsets.only(bottom: 20),
                itemCount: _students.length,
                separatorBuilder: (BuildContext context, int index) {
                  return Divider(
                    color: Colors.grey.withOpacity(0.2),
                    height: 9,
                    thickness: 1,
                  );
                },
                itemBuilder: (BuildContext context, int index) {
                  return StudentCard(
                    name: _students[index]['name'],
                    imgPath: _students[index]['imagePath'],
                    isPresent: _students[index]['isPresent'],
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class StudentCard extends StatefulWidget {
  final String name;
  final String imgPath;
  bool isPresent;
  StudentCard({
    Key? key,
    required this.name,
    required this.imgPath,
    required this.isPresent,
  }) : super(key: key);

  @override
  State<StudentCard> createState() => _StudentCardState();
}

class _StudentCardState extends State<StudentCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 48,
      padding: EdgeInsets.only(top: 4, left: 16, right: 16, bottom: 4),
      child: Row(
        children: [
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(16),
              image: DecorationImage(
                image: AssetImage(widget.imgPath),
                fit: BoxFit.cover,
              ),
            ),
            child: Container(),
          ),
          const SizedBox(width: 8),
          AppText(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            text: widget.name,
          ),
          Expanded(child: Container()),
          Container(
            width: 24,
            height: 24,
            // decoration: BoxDecoration(
            //   //color: widget.isPresent ? Colors.green : Colors.red,
            //   border: Border.all(
            //     color: widget.isPresent ? Colors.green : Color(0xFF0b0b0b),
            //     width: 2,
            //   ),
            //   borderRadius: BorderRadius.circular(2),
            // ),
            child: Checkbox(
              //4shape: (),
              checkColor: Colors.white,
              activeColor: PRIMARY_COLOR,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4)),
              splashRadius: 20,
              fillColor: (!widget.isPresent)
                  ? MaterialStateProperty.all(
                      Color(0xff0b0b0b).withOpacity(0.1))
                  : MaterialStateProperty.all(PRIMARY_COLOR),
              value: widget.isPresent,
              onChanged: (value) {
                setState(() {
                  widget.isPresent = value!;
                });
              },
            ),
          ),
          const SizedBox(width: 10),
        ],
      ),
    );
  }
}
