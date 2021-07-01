import 'package:flutter/material.dart';

class MainPageButton extends StatelessWidget {
  MainPageButton({this.child, this.text, this.onPressed});
  final Widget child;
  final String text;
  final Function onPressed;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 140.0,
          height: 140.0,
          child: Material(
            color: Colors.green,
            elevation: 5.0,
            borderRadius: BorderRadius.all(Radius.circular(20)),
            child: MaterialButton(
              child: child,
              onPressed: onPressed,
            ),
          ),
        ),
        SizedBox(height: 5.0),
        Text(
          text,
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700, fontSize: 20),
        ),
      ],
    );
  }
}
