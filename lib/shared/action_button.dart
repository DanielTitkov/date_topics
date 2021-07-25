import 'package:date_topics/shared/colors.dart';
import 'package:date_topics/shared/elevation.dart';
import 'package:flutter/material.dart';

class ActionButton extends StatelessWidget {
  final void Function() onPressed;
  final Icon icon;

  ActionButton({@required this.icon, @required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: Colors.cyan[200],
      elevation: elevation,
      focusElevation: elevation,
      hoverElevation: elevation,
      highlightElevation: elevation,
      foregroundColor: accentColor,
      onPressed: onPressed,
      child: icon,
    );
  }
}
