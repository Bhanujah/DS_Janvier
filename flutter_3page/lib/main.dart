import 'package:flutter/material.dart';
import 'page_3.dart';
void main() => runApp(CV3());

class CV3 extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light().copyWith(
        primaryColor: Color(0xFFFFFFFF),
        scaffoldBackgroundColor: Color(0xFFFFFFFF),
      ),
      home: InputPage(),
    );
  }
}
