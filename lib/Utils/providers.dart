import 'package:flutter/material.dart';
import 'package:kuttab/ViewModels/sutdent-information-viewModel.dart';
import 'package:provider/provider.dart';

class Prviders {
  static List<ChangeNotifierProvider<dynamic>> providersList = [
    ChangeNotifierProvider(create: (_) => StudentinfoViewModel()),
  ];
}
