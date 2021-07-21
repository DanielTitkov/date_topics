import 'package:flutter/material.dart';

class ActionButton extends StatelessWidget {
  final void Function() onPressed;
  final Icon icon;

  ActionButton({@required this.icon, @required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: Colors.cyan[200],
      elevation: 0,
      focusElevation: 0,
      hoverElevation: 0,
      highlightElevation: 0,
      foregroundColor: Colors.deepPurpleAccent,
      onPressed: onPressed,
      child: icon,
    );
  }
}
