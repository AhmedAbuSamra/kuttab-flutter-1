import 'package:flutter/material.dart';
import 'package:kuttab/Utils/constants.dart';

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
    double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      width: 17 + screenWidth * 0.05,
      height: 17 + screenWidth * 0.05,
      padding: EdgeInsets.all(screenWidth * 0.025),
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
