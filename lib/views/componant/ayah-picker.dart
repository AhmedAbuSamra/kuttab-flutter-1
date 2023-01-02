import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kuttab/Utils/constants.dart';
import 'package:kuttab/views/componant/app-text.dart';

class Ayahpicker extends StatefulWidget {
  const Ayahpicker({super.key});

  @override
  State<Ayahpicker> createState() => _AyahpickerState();
}

class _AyahpickerState extends State<Ayahpicker> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 32,
      decoration: BoxDecoration(
        border: Border.all(color: GRAY_COLOR),
        borderRadius: BorderRadius.circular(8),
        color: Colors.white,
      ),
      child: InkWell(
        onTap: () {
          showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                content: AyahPickerDialog(),
              );
            },
          );
        },
        child: Center(
          child: AppText(
            text: 102.toString(),
            color: Colors.black,
            fontSize: 14,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}

class AyahPickerDialog extends StatefulWidget {
  const AyahPickerDialog({super.key});

  @override
  State<AyahPickerDialog> createState() => _AyahPickerDialogState();
}

class _AyahPickerDialogState extends State<AyahPickerDialog> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: CupertinoPicker(
        magnification: 1.22,
        squeeze: 1.2,
        useMagnifier: true,
        itemExtent: 48,
        onSelectedItemChanged: (value) {
          print(value);
        },
        children: List<Widget>.generate(
          20,
          (index) => Container(
            height: 14,
            child: Center(
              child: AppText(
                text: index.toString(),
                color: Colors.black,
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
