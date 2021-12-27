import 'package:flutter/material.dart';
import 'package:linkedin_home_app/pages/home_page.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: Color(0xFF1b1b1b),
        backgroundColor: Color(0xFF1b1b1b)),
    home: HomePage(),
  ));
}
