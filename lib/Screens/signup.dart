import 'package:WSH/utils/constants.dart';
import 'package:WSH/utils/style.dart';
import 'package:WSH/widgets/buttons.dart';
import 'package:WSH/widgets/text_field.dart';
import 'package:flutter/material.dart';
import 'package:WSH/utils/config.dart';

class Signup extends StatelessWidget {
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
                  child: Image.asset(Images.anyImage + '/background.png',
                      fit: BoxFit.fill),
                ),
                Container(
                  padding: EdgeInsets.only(
                    top: 92.2 * SizeConfig.vmultiplier,
                    left: 11.1 * SizeConfig.hmultiplier,
                    right: 11.1 * SizeConfig.hmultiplier,
                  ),
                  child: Center(
                    child: Text(
                      Strings.wsh,
                      style: appText.copyWith(
                          fontFamily: 'Product Sans',
                          fontSize: 6.6 * SizeConfig.hmultiplier,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
                Column(
                  children: [
                    Padding(
                      padding:
                          EdgeInsets.only(top: 5.95 * SizeConfig.vmultiplier),
                      child: Align(
                        alignment: Alignment.bottomLeft,
                        child: FlatButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Icon(
                            Icons.navigate_before,
                            color: Colors.white,
                            size: 13.88 * SizeConfig.hmultiplier,
                          ),
                        ),
                      ),
                    ),
                    Center(
                      child: Text(
                        'Signup!',
                        style: appText.copyWith(
                            fontSize: 11.1 * SizeConfig.hmultiplier,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Product Sans'),
                      ),
                    ),
                    SizedBox(
                      height: 5.95 * SizeConfig.vmultiplier,
                    ),
                    AppTextField(
                      title: 'Name',
                      icon: Icon(Icons.person),
                      height: 6.69 * SizeConfig.vmultiplier,
                      width: 80.5 * SizeConfig.hmultiplier,
                    ),
                    SizedBox(
                      height: 1.48 * SizeConfig.vmultiplier,
                    ),
                    AppTextField(
                      title: 'Phone Number',
                      icon: Icon(Icons.call),
                      height: 6.69 * SizeConfig.vmultiplier,
                      width: 80.5 * SizeConfig.hmultiplier,
                    ),
                    SizedBox(
                      height: 1.48 * SizeConfig.vmultiplier,
                    ),
                    AppTextField(
                      title: 'Email ID',
                      icon: Icon(Icons.email),
                      height: 6.69 * SizeConfig.vmultiplier,
                      width: 80.5 * SizeConfig.hmultiplier,
                    ),
                    SizedBox(
                      height: 1.48 * SizeConfig.vmultiplier,
                    ),
                    AppTextField(
                      title: 'Password',
                      icon: Icon(Icons.lock),
                      height: 6.69 * SizeConfig.vmultiplier,
                      width: 80.5 * SizeConfig.hmultiplier,
                    ),
                    SizedBox(
                      height: 1.48 * SizeConfig.vmultiplier,
                    ),
                    AppTextField(
                      title: '     Confirm Password',
                      icon: Icon(Icons.verified),
                      height: 6.69 * SizeConfig.vmultiplier,
                      width: 80.5 * SizeConfig.hmultiplier,
                    ),
                    SizedBox(
                      height: 2.97 * SizeConfig.vmultiplier,
                    ),
                    AppButtons(
                      title: 'SIGNUP',
                      onpressed: 'verificationcodepage',
                      width: 41.6 * SizeConfig.hmultiplier,
                      height: 5.95 * SizeConfig.vmultiplier, // add function
                    ),
                    SizedBox(
                      height: 1.48 * SizeConfig.vmultiplier,
                    ),
                    Center(
                        child: Text(
                      '-OR-',
                      style: appText.copyWith(
                          fontSize: 5.55 * SizeConfig.hmultiplier),
                    )),
                    SizedBox(
                      height: 1.48 * SizeConfig.vmultiplier,
                    ),
                    Center(
                        child: Text(
                      'Sign in With',
                      style: appText.copyWith(
                          fontSize: 4.16 * SizeConfig.hmultiplier),
                    )),
                    SizedBox(
                      height: 1.48 * SizeConfig.vmultiplier,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FlatButton(
                            onPressed: () {},
                            child:
                                Image.asset(Images.anyImage + '/facebook.png')),
                        FlatButton(
                            onPressed: () {},
                            child:
                                Image.asset(Images.anyImage + '/google.png')),
                      ],
                    )
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
