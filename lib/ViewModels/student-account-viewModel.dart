import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kuttab/models/Surah-model.dart';

class StudentAccountViewModel extends ChangeNotifier {
  final Map<String, String> performances = {
    "Present": "حفظ : ",
    "NoReciet": "لم يسمع",
    "Absent": "غائب",
  };

  StudentAccountViewModel() {
    //setSurahList();
  }
}
