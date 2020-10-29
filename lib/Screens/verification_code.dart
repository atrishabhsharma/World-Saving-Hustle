import 'package:WSH/utils/constants.dart';
import 'package:WSH/utils/style.dart';
import 'package:WSH/widgets/text_field.dart';
import 'package:flutter/material.dart';
import 'package:WSH/utils/config.dart';


class VerificationCode extends StatelessWidget {
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
                    fit: BoxFit.fill,
                  ),
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
                          fontSize: 6.66 * SizeConfig.hmultiplier,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
                Column(
                  children: [
                    Padding(
                      padding:  EdgeInsets.only(top: 5.95 * SizeConfig.vmultiplier),
                      child: Align(
                        alignment: Alignment.bottomLeft,
                        child: FlatButton(
                          onPressed: () {},
                          child: Icon(
                            Icons.navigate_before,
                            color: Colors.white,
                            size: 13.88 * SizeConfig.hmultiplier,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 17.85 * SizeConfig.vmultiplier,
                    ),
                    Text(
                      'Ah, Registered!',
                      style: appText.copyWith(
                          fontSize: 11.11 * SizeConfig.hmultiplier,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Product Sans'),
                    ),
                    SizedBox(
                      height: 2.97 * SizeConfig.vmultiplier,
                    ),
                    Center(
                      child: Text(
                        Strings.verificationCode,
                        style: appText.copyWith(
                            fontSize: 5.55 * SizeConfig.hmultiplier,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Product Sans'),
                      ),
                    ),
                    SizedBox(
                      height: 5.95 * SizeConfig.vmultiplier,
                    ),
                    AppTextField(
                      title: '     Code',
                      icon: null,
                      height: 5.95 * SizeConfig.vmultiplier,
                      width: 69.44 * SizeConfig.hmultiplier,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 40),
                      child: Align(
                        alignment: Alignment.bottomRight,
                        child: FlatButton(
                          child: Text(
                            'Send Again',
                            style: appText.copyWith(
                                fontSize: 5.55 * SizeConfig.hmultiplier,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'Product Sans'),
                          ),
                          onPressed: () {},
                        ),
                      ),
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
