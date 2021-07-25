import 'package:date_topics/shared/colors.dart';
import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final void Function() onPressed;
  final String text;

  Button({@required this.text, @required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      color: accentColor,
      onPressed: onPressed,
      child: Text(
        text,
        style: TextStyle(
          fontSize: 16,
          color: Colors.white,
        ),
      ),
    );
  }
}
