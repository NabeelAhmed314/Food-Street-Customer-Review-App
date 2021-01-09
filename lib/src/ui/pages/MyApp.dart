import 'package:flutter/material.dart';
import 'package:food_street_533/src/ui/pages/Feedback_page.dart';
import 'package:food_street_533/src/ui/pages/Login_page.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "FoodStreet533",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xFF171717),
        textTheme: TextTheme(
          headline1: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
          headline2: TextStyle(
            fontWeight: FontWeight.bold, color: Colors.white, fontSize: 14),
        )
      ),
      home: LoginPage(),
    );
  }
}
