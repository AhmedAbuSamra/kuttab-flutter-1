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
              children: [
                Positioned(
                  right: _width * 0.02,
                  top: _width * 0.02,
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
