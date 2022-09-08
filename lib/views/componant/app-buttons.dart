import 'package:flutter/material.dart';
import 'package:kuttab/Utils/constants.dart';
import 'package:kuttab/views/componant/app-text.dart';

class FullColorButton extends StatelessWidget {
  final Function() _onPressed;
  final String _text;
  const FullColorButton(
      {Key? key, required Function() onPressed, required String text})
      : _onPressed = onPressed,
        _text = text,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return SizedBox(
      width: double.infinity,
      height: 50.0,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(PRIMARY_COLOR),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  side: const BorderSide(color: PRIMARY_COLOR))),
        ),
        onPressed: _onPressed,
        child: AppText(
          text: _text,
          fontWeight: FontWeight.w600,
          color: Colors.white,
        ),
      ),
    );
  }
}

class WhiteButtton extends StatelessWidget {
  final Function() _onPressed;
  final String _text;
  final bool? _bordered;
  const WhiteButtton(
      {Key? key,
      required Function() onPressed,
      required String text,
      bool? bordered})
      : _onPressed = onPressed,
        _text = text,
        _bordered = bordered,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: 50.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
              side: (_bordered == false)
                  ? (const BorderSide(color: Colors.white))
                  : (const BorderSide(color: PRIMARY_COLOR)),
            ),
          ),
        ),
        onPressed: _onPressed,
        child: AppText(
          text: _text,
          color: PRIMARY_COLOR,
          fontWeight: FontWeight.w600,
          fontSize: 12,
        ),
      ),
    );
  }
}

class WhiteIconButtton extends StatelessWidget {
  final Function() _onPressed;
  final String _text;
  final Icon _icon;
  final bool? _bordered;
  const WhiteIconButtton(
      {Key? key,
      required Function() onPressed,
      required Icon icon,
      required String text,
      bool? bordered})
      : _onPressed = onPressed,
        _text = text,
        _icon = icon,
        _bordered = bordered,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: 0.0,
          shadowColor: Colors.transparent,
          primary: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50.0),
            side: (_bordered == false)
                ? (const BorderSide(color: Colors.white))
                : (const BorderSide(color: BUTTON_COLOR)),
          ),
        ),
        onPressed: _onPressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              _icon.icon,
              color: BUTTON_COLOR,
            ),
            (_text != null)
                ? const SizedBox(
                    width: 5.5,
                  )
                : Container(),
            (_text != null)
                ? AppText(
                    text: _text,
                    color: BUTTON_COLOR,
                    fontWeight: FontWeight.w600,
                    fontSize: 12,
                  )
                : Container(),
          ],
        ),
      ),
    );
  }
}

class FullColorIconButtton extends StatelessWidget {
  final Function() _onPressed;
  final Icon _icon;
  final String? _text;
  final bool? _bordered;
  const FullColorIconButtton({
    Key? key,
    required Function() onPressed,
    required Icon icon,
    String? text,
    bool? bordered,
  })  : _onPressed = onPressed,
        _icon = icon,
        _bordered = bordered,
        _text = text,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: 0.0,
          shadowColor: Colors.transparent,
          primary: BUTTON_COLOR,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50.0),
            side: (_bordered == false)
                ? (const BorderSide(color: Colors.white))
                : (const BorderSide(color: BUTTON_COLOR)),
          ),
        ),
        onPressed: _onPressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              _icon.icon,
              color: Colors.white,
            ),
            (_text != null)
                ? const SizedBox(
                    width: 5.5,
                  )
                : Container(),
            (_text != null)
                ? AppText(
                    text: _text!,
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 12,
                  )
                : Container(),
          ],
        ),
      ),
    );
  }
}
