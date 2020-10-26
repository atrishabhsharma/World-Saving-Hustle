import 'package:WSH/utils/constants.dart';
import 'package:WSH/utils/style.dart';
import 'package:WSH/widgets/buttons.dart';
import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
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
                        fontSize: 13, fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              SizedBox(
                height: 80, // add logic
              ),
              AppButtons(
                title: 'LOG IN',
                onpressed: null, // add function
              ),
              SizedBox(
                height: 20,
              ),
              AppButtons(
                title: 'SIGN IN',
                onpressed: null, // add function
              ),
              SizedBox(
                height: 150, // add logic
              ),
              Container(
                padding: EdgeInsets.only(left: 15, right: 15),
                child: Center(
                  child: Text(
                    Strings.wsh,
                    style: appText.copyWith(
                        fontFamily: 'Product Sans',
                        fontSize: 24,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
