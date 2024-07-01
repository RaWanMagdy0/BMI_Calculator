import 'package:bmi_calculator/Home_Page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          floatingActionButtonTheme:
              FloatingActionButtonThemeData(backgroundColor: Colors.teal),
          primaryColor: Colors.teal,
          canvasColor: Colors.black,
          textTheme: TextTheme(
              bodySmall: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ))),
      home: Home_Page(),
    );
  }
}
