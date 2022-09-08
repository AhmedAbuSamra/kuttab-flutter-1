import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kuttab/Utils/constants.dart';
import 'package:kuttab/views/componant/app-text.dart';

class AppTopBar extends StatefulWidget {
  final String title;
  const AppTopBar({Key? key, required this.title}) : super(key: key);

  @override
  State<AppTopBar> createState() => _AppTopBarState();
}

class _AppTopBarState extends State<AppTopBar> {
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
          Center(
            child: AppText(
              text: widget.title,
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
