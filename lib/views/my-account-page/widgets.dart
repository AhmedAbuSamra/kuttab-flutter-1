import 'package:flutter/material.dart';
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
