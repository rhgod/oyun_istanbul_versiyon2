import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  RoundedButton({@required this.text, this.color, this.onPressed, this.textColor});
  final Color color, textColor;
  final Function onPressed;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 20.0),
      child: Material(
        elevation: 5.0,
        color: color,
        borderRadius: BorderRadius.circular(30.0),
        child: MaterialButton(
          textColor: textColor,
          onPressed: onPressed,
          minWidth: 200.0,
          height: 42.0,
          child: Text(text),
        ),
      ),
    );
  }
}
