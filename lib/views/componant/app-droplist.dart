// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:kuttab/Utils/constants.dart';
import 'package:kuttab/views/componant/app-text.dart';

class AppDopList extends StatefulWidget {
  AppDopList({super.key, required this.items});
  List<DropdownMenuItem<String>> items;

  @override
  State<AppDopList> createState() => _AppDopListState();
}

class _AppDopListState extends State<AppDopList> {
  String _selectedValue = "تسميع";
  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField(
      isExpanded: true,
      alignment: Alignment.center,
      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: GRAY_COLOR),
          borderRadius: BorderRadius.circular(16.0),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: GRAY_COLOR),
          borderRadius: BorderRadius.circular(16.0),
        ),
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(16),
          ),
        ),
        filled: true,
        fillColor: Colors.white,
        contentPadding:
            EdgeInsets.only(left: 15, bottom: 11, top: 11, right: 15),
      ),
      value: _selectedValue,
      onChanged: (value) {
        setState(() {
          _selectedValue = value as String;
        });
      },
      items: widget.items,
    );
  }
}
