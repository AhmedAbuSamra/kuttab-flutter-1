import 'package:flutter/material.dart';
import 'package:kuttab/Utils/constants.dart';
import 'package:kuttab/views/componant/app-buttons.dart';
import 'package:kuttab/views/componant/app-text-field.dart';
import 'package:kuttab/views/componant/app-text.dart';

class PersonalInformationBody extends StatefulWidget {
  const PersonalInformationBody({Key? key}) : super(key: key);

  @override
  State<PersonalInformationBody> createState() =>
      _PersonalInformationBodyState();
}

class _PersonalInformationBodyState extends State<PersonalInformationBody> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom, top: 16),
      height: MediaQuery.of(context).size.height - 106,
      width: screenWidth,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(32),
        ),
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 16),
            const PersonalPicturePicker(
              imgPath: "assets/images/personal-pic.png",
            ),
            const SizedBox(height: 32),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 16),
              child: Form(
                child: Column(
                  children: [
                    /////////////
                    // name filed
                    /////////////
                    /// title row
                    Row(
                      children: const [
                        Icon(
                          Icons.person_rounded,
                          color: PRIMARY_COLOR,
                          size: 19,
                        ),
                        SizedBox(width: 16),
                        AppText(
                          text: "الاسم رباعي",
                          color: Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        )
                      ],
                    ),
                    const SizedBox(height: 11),
                    // field
                    AppTextField(
                      hintText: "الاسم رباعي",
                      initialValue: "محمد أحمد سعيد عبدالحي",
                      obscure: false,
                    ),
                    const SizedBox(height: 19),
                    /////////////
                    // date of Bairth field
                    /////////////
                    /// title row
                    Row(
                      children: const [
                        Icon(
                          Icons.cake_rounded,
                          color: PRIMARY_COLOR,
                          size: 19,
                        ),
                        SizedBox(width: 16),
                        AppText(
                          text: "تاريخ الميلاد",
                          color: Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        )
                      ],
                    ),
                    const SizedBox(height: 11),
                    // field
                    AppTextField(
                      hintText: "تاريخ الميلاد",
                      initialValue: " 19 / 10 / 1999",
                      obscure: false,
                    ),
                    const SizedBox(height: 19),
                    /////////////
                    // study level
                    /////////////
                    /// title row
                    Row(
                      children: const [
                        Icon(
                          Icons.school_rounded,
                          color: PRIMARY_COLOR,
                          size: 19,
                        ),
                        SizedBox(width: 16),
                        AppText(
                          text: "المستوى الدراسي",
                          color: Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        )
                      ],
                    ),
                    const SizedBox(height: 11),
                    // field
                    AppTextField(
                      hintText: "المستوى الدراسي",
                      initialValue: "باكالوريوس",
                      obscure: false,
                    ),
                    const SizedBox(height: 19),
                    /////////////
                    // national ID number
                    /////////////
                    /// title row
                    Row(
                      children: const [
                        Icon(
                          Icons.numbers,
                          color: PRIMARY_COLOR,
                          size: 19,
                        ),
                        SizedBox(width: 16),
                        AppText(
                          text: "رقم الهوية",
                          color: Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        )
                      ],
                    ),
                    const SizedBox(height: 11),
                    // field
                    AppTextField(
                      hintText: "رقم الهوية",
                      initialValue: "909988987",
                      obscure: false,
                    ),
                    const SizedBox(height: 19),
                    /////////////
                    // full address
                    /////////////
                    /// title row
                    Row(
                      children: const [
                        Icon(
                          Icons.person_rounded,
                          color: PRIMARY_COLOR,
                          size: 19,
                        ),
                        SizedBox(width: 16),
                        AppText(
                          text: "العنوان بالتفصيل",
                          color: Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        )
                      ],
                    ),
                    const SizedBox(height: 11),
                    // field
                    AppTextField(
                      hintText: "العنوان بالتفصيل",
                      initialValue:
                          "غزة - الرمال - شارع الشهداء - بجوار مسجد الشهداء",
                      obscure: false,
                    ),
                    const SizedBox(height: 48),
                    Container(
                      child: Row(
                        children: [
                          Container(
                            width: (screenWidth - 40) * 0.55,
                            child:
                                FullColorButton(onPressed: () {}, text: "حفظ "),
                          ),
                          Expanded(child: Container()),
                          Container(
                            width: (screenWidth - 40) * 0.45,
                            child:
                                WhiteButtton(onPressed: () {}, text: "إلغاء "),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PersonalPicturePicker extends StatefulWidget {
  final String imgPath;
  const PersonalPicturePicker({Key? key, required this.imgPath})
      : super(key: key);

  @override
  State<PersonalPicturePicker> createState() => _PersonalPicturePickerState();
}

class _PersonalPicturePickerState extends State<PersonalPicturePicker> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 104,
      child: Center(
        child: SizedBox(
          width: 136,
          height: 104,
          child: Stack(
            children: [
              // Image
              Positioned(
                top: 0,
                left: 16,
                child: Container(
                  width: 104,
                  height: 104,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(60),
                    image: DecorationImage(
                      image: AssetImage(widget.imgPath),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 36,
                right: 0,
                child: Container(
                  width: 32,
                  height: 32,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.15),
                        spreadRadius: 0,
                        blurRadius: 2,
                        offset:
                            const Offset(0, 1), // changes position of shadow
                      ),
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: const Icon(
                    Icons.camera_alt_rounded,
                    color: PRIMARY_COLOR,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
