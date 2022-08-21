import 'package:flutter/material.dart';
import 'package:kuttab/Utils/constants.dart';

class AppTextField extends StatefulWidget {
  AppTextField({
    Key? key,
    required this.hintText,
    required this.obscure,
  }) : super(key: key);

  final String hintText;
  bool obscure, view = true;
  @override
  State<AppTextField> createState() => _AppTextFieldState();
}

class _AppTextFieldState extends State<AppTextField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: const TextStyle(
        fontFamily: 'URW-DIN-Arabic',
      ),
      keyboardType: TextInputType.multiline,
      obscureText: !widget.view,
      enableSuggestions: !widget.obscure,
      autocorrect: !widget.obscure,
      cursorColor: SECONDARY_COLOR,
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
        hintStyle: TextStyle(fontSize: 14),
        filled: false,
        fillColor: SECONDARY_COLOR,
        contentPadding: const EdgeInsets.only(
            left: 14.0, bottom: 6.0, top: 8.0, right: 14.0),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: PRIMARY_COLOR),
          borderRadius: BorderRadius.circular(20.0),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: PRIMARY_COLOR),
          borderRadius: BorderRadius.circular(20.0),
        ),
      ),
    );
  }
}
