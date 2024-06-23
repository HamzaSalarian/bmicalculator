import 'package:bmicalculator/result_page.dart';
import 'package:flutter/material.dart';
import 'inputpage.dart';
import 'result_page.dart';

void main() {
  runApp(const BMICalculator());
}

class BMICalculator extends StatelessWidget {
  const BMICalculator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color(0xff0A0F21),
        scaffoldBackgroundColor: Color(0xff0A0F21),
        textTheme: TextTheme(bodyMedium: TextStyle(color: Colors.white)),
        appBarTheme: AppBarTheme(
          backgroundColor: Color(0xff0A0F21),
          titleTextStyle: TextStyle(
              color: Colors.white, fontSize: 20.0, fontWeight: FontWeight.bold),
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => InputPage(),
      },
    );
  }
}
