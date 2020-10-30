import 'package:WSH/utils/constants.dart';
import 'package:WSH/utils/style.dart';
import 'package:WSH/widgets/buttons.dart';
import 'package:WSH/widgets/text_field.dart';
import 'package:flutter/material.dart';
import 'package:WSH/utils/config.dart';

class LogIn extends StatelessWidget {
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
                      top: 92.3 * SizeConfig.vmultiplier,
                      left: 4.2 * SizeConfig.hmultiplier,
                      right: 4.2 * SizeConfig.hmultiplier),
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
                          EdgeInsets.only(top: 5.9 * SizeConfig.vmultiplier),
                      child: Align(
                        alignment: Alignment.bottomLeft,
                        child: FlatButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Icon(
                            Icons.navigate_before,
                            color: Colors.white,
                            size: 13.8 * SizeConfig.hmultiplier,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 17.8 * SizeConfig.vmultiplier,
                    ),
                    Center(
                      child: Text(
                        'Login!',
                        style: appText.copyWith(
                            fontSize: 5.95 * SizeConfig.vmultiplier,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Product Sans'),
                      ),
                    ),
                    SizedBox(
                      height: 5.9 * SizeConfig.vmultiplier,
                    ),
                    AppTextField(
                      title: 'Email ID',
                      icon: Icon(Icons.email_outlined),
                      height: 7 * SizeConfig.vmultiplier,
                      width: 80.5 * SizeConfig.hmultiplier,
                    ),
                    SizedBox(
                      height: 2.9 * SizeConfig.vmultiplier,
                    ),
                    AppTextField(
                      title: 'Password',
                      icon: Icon(Icons.lock_open_outlined),
                      height: 7 * SizeConfig.vmultiplier,
                      width: 80.5 * SizeConfig.hmultiplier,
                    ),
                    SizedBox(
                      height: 8 * SizeConfig.vmultiplier,
                    ),
                    AppButtons(
                      title: 'LOGIN',
                      onpressed: 'myprofilepage',
                      width: 41.6 * SizeConfig.hmultiplier,
                      height: 5.9 * SizeConfig.vmultiplier, // add function
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
