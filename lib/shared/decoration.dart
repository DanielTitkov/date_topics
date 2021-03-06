import 'package:flutter/material.dart';

// final screenBackgroundDecoration = BoxDecoration(
//   gradient: LinearGradient(
//     begin: Alignment.topCenter,
//     end: Alignment.bottomRight,
//     stops: [0.05, 0.45, 0.85, 0.95],
//     colors: [
//       Colors.white,
//       Colors.deepPurple[300],
//       Colors.pink[300],
//       Colors.pink[300],
//     ],
//   ),
// );

final appBarDecoration = BoxDecoration(
  gradient: LinearGradient(
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    colors: <Color>[
      Colors.indigo[600],
      Colors.deepPurple[500],
      Colors.pink[800],
    ],
  ),
);

final screenBackgroundDecoration = BoxDecoration(
  image: DecorationImage(
    image: AssetImage("assets/valentine.jpg"),
    fit: BoxFit.cover,
  ),
);
