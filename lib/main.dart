import 'package:WSH/Screens/LandingPage.dart';
import 'package:WSH/Screens/Login.dart';
import 'package:WSH/Screens/Register.dart';
import 'package:WSH/Screens/calender.dart';
import 'package:WSH/Screens/feedback.dart';
import 'package:WSH/Screens/find_an_event.dart';
import 'package:WSH/Screens/my_profile.dart';
import 'package:WSH/Screens/pick_bag.dart';
import 'package:WSH/Screens/signup.dart';
import 'package:WSH/Screens/verification_code.dart';
import 'package:WSH/utils/config.dart';
import 'package:flutter/material.dart';
import 'Screens/event.dart';

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
          initialRoute: 'landingpage',
          routes: {
            'landingpage': (context) => LandingPage(),
            'loginpage': (context) => LogIn(),
            'signuppage': (context) => Signup(),
            'verificationcodepage': (context) => VerificationCode(),
            'myprofilepage': (context) => MyProfile(),
            'findaneventpage': (context) => FindAnEvent(),
            'calenderpage': (context) => Calender(),
            'registerpage': (context) => Register(),
            'pickabagpage': (context) => Pickabag(),
            'eventpage': (context) => Event(),
            'feedbackpage': (context) => FeedBack(),
          },
          //  home: PageView(),
        );
      });
    });
  }
}
