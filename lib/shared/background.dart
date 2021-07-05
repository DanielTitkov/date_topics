import 'package:flutter/material.dart';

final gradientDecoration = BoxDecoration(
  gradient: LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomRight,
    stops: [0.05, 0.45, 0.85, 0.95],
    colors: [
      Colors.white,
      Colors.deepPurple[300],
      Colors.pink[400],
      Colors.pink[300],
    ],
  ),
);
