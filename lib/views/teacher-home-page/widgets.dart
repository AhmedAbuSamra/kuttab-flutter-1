// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:flutter/material.dart';
import 'package:kuttab/Utils/constants.dart';
import 'package:kuttab/views/componant/app-text.dart';

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
