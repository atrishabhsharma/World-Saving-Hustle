import 'package:WSH/utils/constants.dart';
import 'package:WSH/utils/style.dart';
import 'package:WSH/widgets/bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:WSH/widgets/text_field.dart';
import 'package:WSH/widgets/buttons.dart';
import 'package:WSH/utils/config.dart';

class Pickabag extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Register",
            textAlign: TextAlign.center,
            style: appText.copyWith(
                fontSize: 6.66 * SizeConfig.hmultiplier,
                fontWeight: FontWeight.w400,
                fontFamily: 'Product Sans'),
          ),
          centerTitle: true,
          actions: [
            IconButton(
              onPressed: () => [],
              icon: Image.asset(
                "assets/images/appbaricon.png",
              ),
            ),
          ],
          backgroundColor: Color.fromARGB(255, 37, 37, 37),
        ),
        body: Container(
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
              Column(
                children: [
                  Container(
                    child: Row(children: <Widget>[
                      Container(
                        padding: EdgeInsets.only(top: 10.41 * SizeConfig.vmultiplier, left: 16.66 * SizeConfig.hmultiplier),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: FlatButton(
                            height: 15.17 * SizeConfig.vmultiplier,
                            minWidth: 28.33 * SizeConfig.hmultiplier,
                            onPressed: () => [],
                            color: Colors.grey[700].withOpacity(.7),
                            shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(50)),
                              side: BorderSide(
                                color: Colors.white,
                              ),
                            ),
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    Images.anyImage + "/pickabag.png",
                                  ),
                                  SizedBox(
                                    height: 3,
                                  ),
                                  Text(
                                    "PICKABAG",
                                    textAlign: TextAlign.left,
                                    style: appText.copyWith(
                                        fontSize: 3.88 * SizeConfig.hmultiplier,
                                        fontWeight: FontWeight.w400,
                                        fontFamily: 'Product Sans'),
                                  ),
                                  // addd
                                ]),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 8.33 * SizeConfig.hmultiplier,
                      ),
                      Container(
                        padding: const EdgeInsets.only(top: 70),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: FlatButton(
                            height: 15.17 * SizeConfig.vmultiplier,
                            minWidth: 28.33 * SizeConfig.hmultiplier,
                            onPressed: () => null,
                            color: Colors.grey[700].withOpacity(.7),
                            shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(50)),
                              side: BorderSide(
                                color: Colors.white,
                              ),
                            ),
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    Images.anyImage + "/shoppingbag.png",
                                  ),
                                  SizedBox(
                                    height: 3,
                                  ),
                                  Text(
                                    "EVENTS",
                                    textAlign: TextAlign.left,
                                    style: appText.copyWith(
                                        fontSize: 3.88 * SizeConfig.hmultiplier,
                                        fontWeight: FontWeight.w400,
                                        fontFamily: 'Product Sans'),
                                  ),
                                ]),
                          ),
                        ),
                      ),
                    ]),
                  ),
                ],
              ),
              Column(
                children: [
                  SizedBox(
                    height: 29.76 * SizeConfig.vmultiplier,
                  ),
                  Row(
                    children: <Widget>[
                      SizedBox(
                        width: 9.72 * SizeConfig.hmultiplier,
                      ),
                      AppTextField(
                        title: '     Street',
                        icon: null,
                        height: 5.2 * SizeConfig.vmultiplier,
                        width: 37.5 * SizeConfig.hmultiplier,
                      ),
                      SizedBox(
                        width: 5.55 * SizeConfig.hmultiplier,
                      ),
                      AppTextField(
                        title: '    City',
                        icon: null,
                        height: 5.2 * SizeConfig.vmultiplier,
                        width: 37.5 * SizeConfig.hmultiplier,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 2.97 * SizeConfig.vmultiplier,
                  ),
                  AppTextField(
                    title: '    State',
                    icon: null,
                    height: 5.2 * SizeConfig.vmultiplier,
                    width: 80.55 * SizeConfig.hmultiplier,
                  ),
                  SizedBox(
                    height: 2.97 * SizeConfig.vmultiplier,
                  ),
                  AppTextField(
                    title: '    Zipcode',
                    icon: null,
                    height: 5.2 * SizeConfig.vmultiplier,
                    width: 80.55 * SizeConfig.hmultiplier,
                  ),
                  SizedBox(
                    height: 2.97 * SizeConfig.vmultiplier,
                  ),
                  AppButtons(
                    title: 'Upload Photos',
                    onpressed: null,
                    height: 5.2 * SizeConfig.vmultiplier,
                    width: 80.55 * SizeConfig.hmultiplier, // add function
                  ),
                  SizedBox(
                    height: 10.41 * SizeConfig.vmultiplier,
                  ),
                  AppButtons(
                    title: 'REGISTER',
                    onpressed: null,
                    width: 41.66 * SizeConfig.vmultiplier,
                    height: 5.9 * SizeConfig.vmultiplier, // add function
                  ),
                ],
              )
            ],
          ),
        ),
        bottomNavigationBar: AppBottomNavigation(),
      ),
    );
  }
}
