import 'package:flutter/material.dart';
import 'package:kuttab/Utils/constants.dart';

class AppTextField extends StatefulWidget {
  String? initialValue = "";
  AppTextField({
    Key? key,
    required this.hintText,
    required this.controller,
    this.initialValue,
    this.maxLines,
    required this.obscure,
  }) : super(key: key);

  final String hintText;
  bool obscure, view = true;
  int? maxLines = 1;
  TextEditingController controller;
  @override
  State<AppTextField> createState() => _AppTextFieldState();
}

class _AppTextFieldState extends State<AppTextField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      maxLines: widget.maxLines,
      style: const TextStyle(
        fontSize: 12,
        fontFamily: 'URW-DIN-Arabic',
      ),
      keyboardType: TextInputType.multiline,
      obscureText: !widget.view,
      enableSuggestions: !widget.obscure,
      autocorrect: !widget.obscure,
      cursorColor: SECONDARY_COLOR,
      initialValue:
          (widget.initialValue == null) ? "" : "${widget.initialValue}",
      decoration: InputDecoration(
        suffixIcon: (!widget.obscure)
            ? (null)
            : IconButton(
                icon: Icon(
                  // Based on passwordVisible state choose the icon
                  widget.view ? Icons.visibility : Icons.visibility_off,
                  color: Colors.black,
                ),
                onPressed: () {
                  // Update the state i.e. toogle the state of passwordVisible variable
                  setState(() {
                    widget.view = !widget.view;
                    print(widget.obscure);
                  });
                },
              ),
        hintText: widget.hintText,
        hintStyle: TextStyle(fontSize: 12),
        filled: false,
        fillColor: SECONDARY_COLOR,
        contentPadding: const EdgeInsets.only(
            left: 24.0, bottom: 6.0, top: 8.0, right: 24.0),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: PRIMARY_COLOR),
          borderRadius: BorderRadius.circular(16.0),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: GRAY_COLOR),
          borderRadius: BorderRadius.circular(16.0),
        ),
      ),
    );
  }
}
