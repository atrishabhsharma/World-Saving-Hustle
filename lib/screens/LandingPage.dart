import 'package:WSH/utils/constants.dart';
import 'package:WSH/utils/style.dart';
import 'package:WSH/widgets/buttons.dart';
import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: Stack(
            children: [
              Positioned(
                left: 0,
                top: 0,
                right: 0,
                bottom: 0,
                child: Image.asset(
                  Images.anyImage + '/background.png',
                  fit: BoxFit.cover,
                ),
              ),
              // TODO: second element of stack
              Container(
                padding: EdgeInsets.only(top: 620, left: 15, right: 15),
                child: Center(
                  child: Text(
                    Strings.wsh,
                    style: appText.copyWith(
                        fontFamily: 'Product Sans',
                        fontSize: 24,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0), // add login
                    child: Padding(
                      padding: const EdgeInsets.only(top: 120), // add login
                      child: Center(
                        child: Text(
                          'WSH',
                          style: appLogo,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 15, right: 15),
                    child: Center(
                      child: Text(
                        Strings.landingpage,
                        style: appText.copyWith(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 1),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 80, // add logic
                  ),
                  AppButtons(
                    title: 'LOG IN',
                    onpressed: null,
                    width: 200, // add function
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  AppButtons(
                    title: 'SIGN IN',
                    onpressed: null,
                    width: 200, // add function
                  ),
                  SizedBox(
                    height: 100, // add logic
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
