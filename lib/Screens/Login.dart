import 'package:WSH/utils/constants.dart';
import 'package:WSH/utils/style.dart';
import 'package:WSH/widgets/buttons.dart';
import 'package:WSH/widgets/text_field.dart';
import 'package:flutter/material.dart';

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
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 40),
                      child: Align(
                        alignment: Alignment.bottomLeft,
                        child: FlatButton(
                          onPressed: () {},
                          child: Icon(
                            Icons.navigate_before,
                            color: Colors.white,
                            size: 50,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 120,
                    ),
                    Center(
                      child: Text(
                        'Login!',
                        style: appText.copyWith(
                            fontSize: 40,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Product Sans'),
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    AppTextField(
                      title: '     Email ID',
                      icon: Icon(Icons.email_outlined),
                      height: 45,
                      width: 290,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    AppTextField(
                      title: '     Password',
                      icon: Icon(Icons.lock_open_outlined),
                      height: 45,
                      width: 290,
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    AppButtons(
                      title: 'LOGIN',
                      onpressed: null,
                      width: 150,
                      height: 40, // add function
                    ),
                    SizedBox(
                      height: 130,
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
