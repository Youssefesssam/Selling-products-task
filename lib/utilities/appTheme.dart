import 'dart:ui';
import 'package:flutter/material.dart';

class AppTheme {
  static const Color PrimaryColor = Color(0xff4ba89b);
  static const Color White = Color(0xffffffff);
  static const Color black = Color(0xff393939);
  static const Color green = Color(0xff12e51d);
  static const Color red = Color(0xffff0044);
  static const Color gray = Color(0xff707070);
  static const Color whiteGray = Color(0xff9d9696);
  static const Color backgroundColor = Color(0xE2F3F3F3);
  static const Color blackDarkColor = Color(0xff131923);
  static const Color backgroundDarkColor = Color(0xff070e1f);
  static ThemeData lightTheme = ThemeData(
    primaryColor: PrimaryColor,
    textTheme: const TextTheme(
        titleLarge: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: black),
        titleMedium: TextStyle(fontSize: 22, fontWeight: FontWeight.w300, color: black),
        titleSmall:TextStyle(fontSize: 18, fontWeight: FontWeight.w100, color: black)),
  );
}
