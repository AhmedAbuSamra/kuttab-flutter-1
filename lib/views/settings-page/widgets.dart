import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kuttab/Utils/constants.dart';
import 'package:kuttab/views/componant/app-text.dart';

class SettingPageBody extends StatefulWidget {
  bool isSetingsOn;
  SettingPageBody({Key? key, required this.isSetingsOn}) : super(key: key);

  @override
  State<SettingPageBody> createState() => _SettingPageBodyState();
}

class _SettingPageBodyState extends State<SettingPageBody> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(32),
        ),
      ),
      child: Column(
        children: [
          const SizedBox(height: 56),
          CheckBoxTile(value: widget.isSetingsOn),
          const Divider(color: Colors.grey, thickness: 0),
          const SizedBox(height: 16),
          LanguageChoseTile(),
          const Divider(color: Colors.grey, thickness: 0),
          const SizedBox(height: 16),
          InkWell(
            onTap: () => Get.toNamed("/AboutPage", arguments: "helpPage"),
            child: const ListTile(
              contentPadding: EdgeInsets.symmetric(horizontal: 24),
              title: AppText(
                text: "المساعدة",
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
              trailing: Icon(
                Icons.arrow_forward_ios,
                color: Colors.grey,
                size: 16,
              ),
            ),
          ),
          const Divider(color: Colors.grey, thickness: 0),
          const SizedBox(height: 16),
          InkWell(
            onTap: () => Get.toNamed("/AboutPage", arguments: "privacyPage"),
            child: const ListTile(
              contentPadding: EdgeInsets.symmetric(horizontal: 24),
              title: AppText(
                text: "الخصوصية",
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
              trailing: Icon(
                Icons.arrow_forward_ios,
                color: Colors.grey,
                size: 16,
              ),
            ),
          ),
          const Divider(color: Colors.grey, thickness: 0),
          const SizedBox(height: 16),
          const ListTile(
            contentPadding: EdgeInsets.symmetric(horizontal: 24),
            title: AppText(
              text: "الإصدار 0.0.1",
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(
              height: (screenHeight - 560 > 0) ? (screenHeight - 560) : (40)),
        ],
      ),
    );
  }
}

class CheckBoxTile extends StatefulWidget {
  bool value;
  CheckBoxTile({Key? key, required this.value}) : super(key: key);

  @override
  State<CheckBoxTile> createState() => _CheckBoxTileState();
}

class _CheckBoxTileState extends State<CheckBoxTile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Row(
        children: [
          const AppText(
            text: 'الإشعارات',
            fontSize: 14,
            fontWeight: FontWeight.w600,
          ),
          const Spacer(),
          CupertinoSwitch(
            value: widget.value,
            onChanged: (value) {
              setState(() {
                widget.value = !widget.value;
                print(value);
              });
            },
            activeColor: PRIMARY_COLOR,
          ),
        ],
      ),
    );
  }
}

class LanguageChoseTile extends StatefulWidget {
  LanguageChoseTile({Key? key}) : super(key: key);

  @override
  State<LanguageChoseTile> createState() => _LanguageChoseTileState();
}

class _LanguageChoseTileState extends State<LanguageChoseTile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Row(
        children: const [
          AppText(
            text: 'اللغة',
            fontSize: 14,
            fontWeight: FontWeight.w600,
          ),
          Spacer(),
          AppText(
            text: 'العربية',
            fontSize: 14,
            fontWeight: FontWeight.w600,
            color: Colors.grey,
          ),
        ],
      ),
    );
  }
}
