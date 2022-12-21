import 'package:flutter/material.dart';
import 'package:kuttab/Utils/constants.dart';

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
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.all(30),
                height: 100,
                color: Colors.red,
              ),
              Container(
                height: 100,
                color: Colors.orange,
              ),
              Container(
                height: 100,
                color: Colors.red,
              ),
              Container(
                height: 100,
                color: Colors.green,
              ),
              Container(
                height: 100,
                color: Colors.red,
              ),
              Container(
                height: 100,
                color: Colors.purple,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
