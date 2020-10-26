import 'package:WSH/screens/LandingPage.dart';
import 'package:WSH/screens/Login.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'World saving hustle',
      home: LogIn(),
    );
  }
}
