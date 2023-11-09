import 'package:flutter/material.dart';

class ApplicationTheme {
  static ThemeData lightTheme = ThemeData(
      // primaryColor: const Color(0xFF39A552),
      appBarTheme: const AppBarTheme(
        iconTheme: IconThemeData(color: Colors.orange),
          centerTitle: true,
          color: Colors.transparent,
          elevation: 0,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(25),
            bottomRight: Radius.circular(25),
          ))),
      textTheme: const TextTheme(
        titleSmall:TextStyle(
            fontSize: 15, fontWeight: FontWeight.normal, color: Colors.grey),
        titleLarge: TextStyle(
            fontSize: 22, fontWeight: FontWeight.bold, color: Colors.black),
        titleMedium: TextStyle(
            fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
      ));
}
