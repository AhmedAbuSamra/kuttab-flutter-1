import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kuttab/Utils/constants.dart';
import 'package:kuttab/views/componant/app-text.dart';

class Sorahpicker extends StatefulWidget {
  const Sorahpicker({super.key, this.sorahName});
  final String? sorahName;
  @override
  State<Sorahpicker> createState() => _SorahpickerState();
}

class _SorahpickerState extends State<Sorahpicker> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showDialog(
          context: context,
          builder: (context) {
            return const AlertDialog(
              content: SorahPickerDialog(surahList: [
                "الفاتحة",
                "البقرة",
                "آل عمران",
                "النساء",
                "المائدة",
                "الأنعام",
                "الأعراف",
                "الأنفال",
                "التوبة",
                "يونس",
                "هود",
                "يوسف",
                "الرعد",
                "ابراهيم",
                "الحجر",
                "النحل",
                "الإسراء",
                "الكهف",
                "مريم",
              ]),
            );
          },
        );
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        height: 32,
        decoration: BoxDecoration(
          border: Border.all(color: PRIMARY_COLOR),
          borderRadius: BorderRadius.circular(32),
          color: Colors.white,
        ),
        child: Center(
          child: AppText(
            text: widget.sorahName ?? "سورة",
            color: PRIMARY_COLOR,
            fontSize: 14,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}

class SorahPickerDialog extends StatefulWidget {
  const SorahPickerDialog({super.key, required this.surahList});
  final List<String> surahList;

  @override
  State<SorahPickerDialog> createState() => _SorahPickerDialogState();
}

class _SorahPickerDialogState extends State<SorahPickerDialog> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: [
            for (var i = 0; i < widget.surahList.length; i++)
              InkWell(
                onTap: () {
                  print(widget.surahList[i]);
                  Navigator.pop(context);
                },
                child: Container(
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  height: 32,
                  child: AppText(
                    textAlign: TextAlign.center,
                    text: widget.surahList[i],
                    color: PRIMARY_COLOR,
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
