import 'package:WSH/utils/constants.dart';
import 'package:WSH/utils/style.dart';
import 'package:WSH/widgets/bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:WSH/widgets/text_field.dart';
import 'package:WSH/widgets/buttons.dart';

class Event extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Register",
            textAlign: TextAlign.center,
            style: appText.copyWith(
                fontSize: 24,
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
                        padding: const EdgeInsets.only(top: 70, left: 60),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: FlatButton(
                            height: 102,
                            minWidth: 102,
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
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        fontFamily: 'Product Sans'),
                                  ),
                                  // addd
                                ]),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Container(
                        padding: const EdgeInsets.only(top: 70),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: FlatButton(
                            height: 102,
                            minWidth: 102,
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
                                        fontSize: 14,
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
                    height: 200,
                  ),
                  Row(
                    children: <Widget>[
                      SizedBox(
                        width: 35,
                      ),
                      AppTextField(
                        title: '     Street',
                        icon: null,
                        height: 35,
                        width: 135,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      AppTextField(
                        title: '    City',
                        icon: null,
                        height: 35,
                        width: 135,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  AppTextField(
                    title: '    State',
                    icon: null,
                    height: 35,
                    width: 290,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  AppTextField(
                    title: '    Zipcode',
                    icon: null,
                    height: 35,
                    width: 290,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  AppTextField(
                    title: '    FaceBook link',
                    icon: null,
                    height: 35,
                    width: 290,
                  ),
                  SizedBox(
                    height: 70,
                  ),
                  AppButtons(
                    title: 'REGISTER',
                    onpressed: null,
                    width: 150,
                    height: 40, // add function
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
