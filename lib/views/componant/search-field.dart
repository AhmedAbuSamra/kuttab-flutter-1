import 'package:flutter/material.dart';
import 'package:kuttab/Utils/constants.dart';

class SearchField extends StatefulWidget {
  SearchField({Key? key}) : super(key: key);

  @override
  State<SearchField> createState() => _SearchFieldState();
}

class _SearchFieldState extends State<SearchField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: (MediaQuery.of(context).size.width - 40) * 0.55,
      height: 40,
      child: TextField(
        onTap: () {},
        textAlignVertical: TextAlignVertical.center,
        cursorColor: PRIMARY_COLOR,
        decoration: InputDecoration(
          prefixIcon: const Icon(
            Icons.search,
            size: 20,
            color: PRIMARY_COLOR,
          ),
          border: InputBorder.none,
          hintText: 'البحث عن طالب',
          hintStyle: const TextStyle(
            height: 1,
            color: Colors.grey,
            fontSize: 12,
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.grey),
            borderRadius: BorderRadius.circular(50.0),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.grey),
            borderRadius: BorderRadius.circular(50.0),
          ),
        ),
      ),
    );
  }
}
