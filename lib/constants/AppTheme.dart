import 'package:flutter/material.dart';

class AppTheme {
  static const Color lightYellow = Color(0xFFFFEA80);
  static const Color ellowPinky = Color(0xFFFC5866);
  static const Color pinky = Color(0xFFFC588A);
  static const Color offWhite = Color(0xFFE4E2DD);
  static const Color lightGreen = Color(0xFFDFF8D4);
  static const Color green = Color(0xFF94E870);
}

class Style {
  static const TextStyle bigHead = TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 30,
      color: Colors.black54);
  static const TextStyle productName = TextStyle(
      fontWeight: FontWeight.w700,
      fontSize: 20,
      color: Colors.black54);
  static const TextStyle productDesc = TextStyle(
    fontWeight: FontWeight.w300,
    fontSize: 15,
    color: Colors.black54,
  );
  static const TextStyle productPrice = TextStyle(
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w600,
    fontSize: 20,
    color: Colors.black54,
  );
}
