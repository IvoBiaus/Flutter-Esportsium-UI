import 'package:flutter/material.dart';

import 'screens/Onboarding/index.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Esportsium UI',
      theme: ThemeData(
        appBarTheme: AppBarTheme(color: Color(0xFF27364B)),
        primaryColor: Color(0xFF5570FF),
        primaryColorLight: Color(0xFF8599FC),
        backgroundColor: Color(0xFF27364B),
        scaffoldBackgroundColor: Color(0xFF1B2638),
        accentTextTheme: TextTheme(
          button: TextStyle(
            color: Color(0xFF5570FF),
            fontWeight: FontWeight.bold,
            letterSpacing: 0.5,
            fontSize: 20,
          ),
        ),
        textTheme: TextTheme(
          headline6: TextStyle(
            color: Colors.white,
            letterSpacing: 0.5,
            fontWeight: FontWeight.bold,
            fontSize: 32,
          ),
          bodyText1: TextStyle(
            color: Colors.white,
            letterSpacing: 0.5,
            fontSize: 18,
          ),
          bodyText2: TextStyle(
            color: Colors.white70,
            letterSpacing: 0.5,
            height: 1.5,
            fontSize: 18,
          ),
          subtitle1: TextStyle(
            color: Colors.white60,
            letterSpacing: 0.5,
            fontSize: 16,
          ),
          button: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            letterSpacing: 0.5,
            fontSize: 20,
          ),
        ),
      ),
      home: Onboarding(),
    );
  }
}
