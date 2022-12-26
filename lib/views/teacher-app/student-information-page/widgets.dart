import 'package:flutter/material.dart';
import 'package:kuttab/Utils/constants.dart';
import 'package:kuttab/views/componant/app-text-field.dart';
import 'package:kuttab/views/componant/app-text.dart';

class StudentInfoBudy extends StatefulWidget {
  const StudentInfoBudy({super.key});

  @override
  State<StudentInfoBudy> createState() => _StudentInfoBudyState();
}

class _StudentInfoBudyState extends State<StudentInfoBudy> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(32),
            topRight: Radius.circular(32),
          ),
        ),
        padding: EdgeInsets.only(top: 32),
        child: SingleChildScrollView(
          padding: EdgeInsets.only(top: 0),
          child: Column(
            children: [
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
                    ],
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
