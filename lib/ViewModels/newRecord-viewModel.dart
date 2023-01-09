import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kuttab/models/Surah-model.dart';

class NewRecordViewModel extends ChangeNotifier {
  List<Surah> _surahList = [];
  List<Surah> get surahList => _surahList;

  final List<String> _recordTypeList = ['Reciting', 'Reviewing', 'Recitation'];
  String? _recordtype;
  String? _selectedSurahFrom;
  String? _selectedSurahTo;
  int _selectedSurahFromIndex = 1;
  int _selectedSurahToIndex = 1;
  int _rate = 1;
  String? _note;

  String? get recordtype => _recordtype;
  String? get selectedSurahFrom => _selectedSurahFrom;
  String? get selectedSurahTo => _selectedSurahTo;
  int get selectedSurahFromIndex => selectedSurahFromIndex;
  int get selectedSurahToIndex => _selectedSurahToIndex;
  int get rate => _rate;
  String? get note => _note;

  Future<void> setSurahList() async {
    final String response =
        await rootBundle.loadString('assets/json/surah-short.json');
    _surahList = surahFromJson(response);
    notifyListeners();
  }
}
