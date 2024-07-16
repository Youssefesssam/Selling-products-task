import 'package:flutter/material.dart';
import 'package:selling_products_task/featuers/featuers.dart';
import 'package:selling_products_task/ui/homeScreen/homeScreen.dart';
import 'package:selling_products_task/utilities/appTheme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Features.routeName,
     routes: {
          HomeScreen.routeName:(context) => HomeScreen(),
          Features.routeName:(context) => Features(),
     },
      theme: AppTheme.lightTheme,
    );
  }
}
