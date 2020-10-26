import 'package:WSH/utils/constants.dart';
import 'package:WSH/utils/style.dart';
import 'package:WSH/widgets/buttons.dart';
import 'package:WSH/widgets/text_field.dart';
import 'package:flutter/material.dart';

class LogIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Positioned(
            left: 0,
            top: 0,
            right: 0,
            bottom: 0,
            child: Image.asset(Images.anyImage + '/background.png'),
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
                height: 150,
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
              AppButtons(
                title: 'LOG IN',
                onpressed: null, // add function
              ),
              Container(
                padding: EdgeInsets.only(left: 15, right: 15),
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
            ],
          )
        ],
      ),
    );
  }
}
