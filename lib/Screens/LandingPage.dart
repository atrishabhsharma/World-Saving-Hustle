import 'package:WSH/utils/config.dart';
import 'package:WSH/utils/constants.dart';
import 'package:WSH/utils/style.dart';
import 'package:WSH/widgets/buttons.dart';
import 'package:flutter/material.dart';

//TODO: Check this for refrenceee
class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
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
                Container(
                  margin: EdgeInsets.only(
                    //TODO: sizeConfig applied
                    top: 92.2 * SizeConfig.vmultiplier,
                    left: 11.1 * SizeConfig.hmultiplier,
                    right: 11.1 * SizeConfig.hmultiplier,
                  ),
                  child: Center(
                    child: Text(
                      Strings.wsh,
                      style: appText.copyWith(
                          fontFamily: 'Product Sans',
                          fontSize: 6.5 * SizeConfig.hmultiplier,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0), // add login
                      child: Padding(
                        padding: EdgeInsets.only(
                          top: 17.8 * SizeConfig.vmultiplier,
                        ), // add login
                        child: Center(
                          child: Text(
                            'WSH',
                            style: appLogo,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                          left: 4.1 * SizeConfig.hmultiplier,
                          right: 4.1 * SizeConfig.hmultiplier),
                      child: Center(
                        child: Text(
                          Strings.landingpage,
                          style: appText.copyWith(
                              color: Colors.white,
                              fontSize: 2.1 * SizeConfig.vmultiplier,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Product Sans',
                              letterSpacing: 1),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 11.9 * SizeConfig.vmultiplier, // add logic
                    ),
                    AppButtons(
                      title: 'LOG IN',
                      onpressed: 'loginpage',
                      width: 55 * SizeConfig.hmultiplier, // add function
                    ),
                    SizedBox(
                      height: 1.4 * SizeConfig.vmultiplier,
                    ),
                    AppButtons(
                      title: 'SIGN IN',
                      onpressed: 'signuppage',
                      width: 55 * SizeConfig.hmultiplier, // add function
                    ),
                    SizedBox(
                      height: 14.8 * SizeConfig.vmultiplier, // add logic
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
