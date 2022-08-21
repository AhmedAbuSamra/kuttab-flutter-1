import 'package:flutter/material.dart';

class AppText extends StatefulWidget {
  final String? text;
  final Color? color;
  final double? fontSize;
  final FontWeight? fontWeight;
  final TextAlign? textAlign;
  final TextOverflow? overflow;
  const AppText(
      {Key? key,
      this.text,
      this.color,
      this.fontSize,
      this.fontWeight,
      this.overflow,
      this.textAlign})
      : super(key: key);

  @override
  State<AppText> createState() => _AppTextState();
}

class _AppTextState extends State<AppText> {
  @override
  Widget build(BuildContext context) {
    return Text(
      "${widget.text}",
      textAlign: widget.textAlign,
      overflow: widget.overflow,
      style: TextStyle(
        fontFamily: 'URW-DIN-Arabic',
        color: widget.color,
        fontSize: widget.fontSize ?? 12,
        fontWeight: widget.fontWeight,
      ),
    );
  }
}
