import 'package:WSH/utils/constants.dart';
import 'package:WSH/utils/style.dart';
import 'package:WSH/widgets/buttons.dart';
import 'package:WSH/widgets/text_field.dart';
import 'package:flutter/material.dart';
import 'package:WSH/utils/config.dart';

class FeedBack extends StatelessWidget {
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
                      padding:
                          EdgeInsets.only(top: 5.952 * SizeConfig.vmultiplier),
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
                    SizedBox(
                      height: 13.39 * SizeConfig.vmultiplier,
                    ),
                    Padding(
                      padding:
                          EdgeInsets.only(right: 4.16 * SizeConfig.hmultiplier),
                      child: Text(
                        'Write to Us ;)',
                        style: appText.copyWith(
                            fontSize: 11.11 * SizeConfig.hmultiplier,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Product Sans'),
                      ),
                    ),
                    SizedBox(
                      height: 4.46 * SizeConfig.vmultiplier,
                    ),
                    AppTextField(
                      title: 'Subject',
                      icon: null,
                      height: 5.95 * SizeConfig.vmultiplier,
                      width: 69.44 * SizeConfig.hmultiplier,
                    ),
                    SizedBox(
                      height: 4.46 * SizeConfig.vmultiplier,
                    ),
                    AppTextField(
                      title: 'Messages',
                      icon: null,
                      height: 22.3 * SizeConfig.vmultiplier,
                      width: 69.44 * SizeConfig.hmultiplier,
                    ),
                    SizedBox(
                      height: 4.46 * SizeConfig.vmultiplier,
                    ),
                    AppButtons(
                      title: 'SEND',
                      onpressed: null,
                      width: 41.6 * SizeConfig.hmultiplier,
                      height: 5.95 * SizeConfig.vmultiplier, // add function
                    ),
                    SizedBox(
                      height: 11.9 * SizeConfig.vmultiplier,
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
