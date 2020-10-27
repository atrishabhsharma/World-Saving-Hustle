import 'package:WSH/screens/LandingPage.dart';
import 'package:WSH/screens/Login.dart';
import 'package:WSH/screens/calender.dart';
import 'package:WSH/screens/feedback.dart';
import 'package:WSH/screens/find_an_event.dart';
import 'package:WSH/screens/signup.dart';
import 'package:WSH/screens/verification_code.dart';
import 'package:WSH/utils/config.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return OrientationBuilder(builder: (context, orientation) {
        SizeConfig().init(constraints, orientation);
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'World Saving Hustle',
          home: Calender(),
        );
      });
    });
  }
}
