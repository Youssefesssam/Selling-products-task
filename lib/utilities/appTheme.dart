import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:selling_products_task/main.dart';

class AppTheme {
  static const Color PrimaryColorMain = Color(0xc58ab1d5);
  static const Color PrimaryColor = Color(0xff5685bb);
  static const Color blue = Color(0xFF004181);
  static const Color blueBlack = Color(0xff242162);
  static const Color White = Color(0xffffffff);
  static const Color black = Color(0xff393939);
  static const Color green = Color(0xff12e51d);
  static const Color gray = Color(0xff707070);
  static const Color blackDarkColor = Color(0xff131923);
  static const Color backgroundDarkColor = Color(0xff070e1f);
  static ThemeData lightTheme = ThemeData(
    primaryColor: PrimaryColor,
    textTheme: const TextTheme(
        titleLarge: TextStyle(fontSize: 5, fontWeight: FontWeight.bold, color: blueBlack),
        titleMedium: TextStyle(fontSize: 0, fontWeight: FontWeight.w300, color: blueBlack),
        titleSmall:TextStyle(fontSize: 0, fontWeight: FontWeight.w100, color: blueBlack)),
  );
}
class AppTitle{
  static const TextStyle titleStyleLarge = TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: AppTheme.blueBlack);
  static const TextStyle titleStyleMedum = TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color: AppTheme.blueBlack);
  static const TextStyle titleStyleSmall = TextStyle(fontSize: 14,fontWeight: FontWeight.w400,color: AppTheme.blueBlack);

}