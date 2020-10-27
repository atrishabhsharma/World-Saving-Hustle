import 'package:WSH/utils/constants.dart';
import 'package:WSH/utils/style.dart';
import 'package:WSH/widgets/buttons.dart';
import 'package:WSH/widgets/text_field.dart';
import 'package:flutter/material.dart';

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
                    Center(
                      child: Text(
                        'Signup!',
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
                      title: '     Name',
                      icon: Icon(Icons.person),
                      height: 45,
                      width: 290,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    AppTextField(
                      title: '     Phone Number',
                      icon: Icon(Icons.call),
                      height: 45,
                      width: 290,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    AppTextField(
                      title: '     Email ID',
                      icon: Icon(Icons.email),
                      height: 45,
                      width: 290,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    AppTextField(
                      title: '     Password',
                      icon: Icon(Icons.lock),
                      height: 45,
                      width: 290,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    AppTextField(
                      title: '     Confirm Password',
                      icon: Icon(Icons.verified),
                      height: 45,
                      width: 290,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    AppButtons(
                      title: 'SIGNUP',
                      onpressed: null,
                      width: 150,
                      height: 40, // add function
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Center(
                        child: Text(
                      '-OR-',
                      style: appText.copyWith(fontSize: 20),
                    )),
                    SizedBox(
                      height: 10,
                    ),
                    Center(
                        child: Text(
                      'Sign in With',
                      style: appText.copyWith(fontSize: 15),
                    )),
                    SizedBox(
                      height: 10,
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
