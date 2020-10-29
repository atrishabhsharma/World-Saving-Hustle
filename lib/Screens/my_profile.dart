import 'package:WSH/utils/constants.dart';
import 'package:WSH/utils/style.dart';
import 'package:WSH/widgets/bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:WSH/utils/config.dart';

class MyProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: Container(),
          title: Text(
            "My Profile",
            textAlign: TextAlign.center,
            style: appText.copyWith(
                fontSize: 6.66 * SizeConfig.hmultiplier,
                fontWeight: FontWeight.w400,
                fontFamily: 'Product Sans'),
          ),
          centerTitle: true,
          actions: [
            IconButton(
              onPressed: () =>
                  Navigator.pushReplacementNamed(context, 'feedbackpage'),
              icon: Image.asset(
                Images.anyImage + "/appbaricon.png",
              ),
            ),
          ],
          backgroundColor: Color.fromARGB(255, 37, 37, 37),
        ),
        body: Container(
          child: Stack(children: [
            Positioned(
              left: 0,
              top: 0,
              right: 0,
              bottom: 0,
              child: Image.asset(Images.anyImage + '/background.png',
                  fit: BoxFit.fill),
            ),
            Container(
              child: Column(children: [
                Padding(
                  padding: EdgeInsets.only(top: 4.46 * SizeConfig.vmultiplier),
                  child: Center(
                    child: Image.asset(
                      Images.anyImage + '/picture-3.png',
                      fit: BoxFit.none,
                    ),
                  ),
                ),
                SizedBox(
                  height: 1.48 * SizeConfig.vmultiplier,
                ),
                Center(
                  child: Text(
                    'Martin Skadal',
                    style: appText.copyWith(
                        fontSize: 6.1 * SizeConfig.hmultiplier,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Product Sans'),
                  ),
                ),
                SizedBox(
                  height: 5.95 * SizeConfig.vmultiplier,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    margin: EdgeInsets.only(
                      left: 18.05 * SizeConfig.hmultiplier,
                    ),
                    child: Text(
                      'You have picked',
                      style: appText.copyWith(
                          fontSize: 5.55 * SizeConfig.hmultiplier,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Product Sans'),
                    ),
                  ),
                ),
                SizedBox(
                  height: 0.89 * SizeConfig.vmultiplier,
                ),
                Container(
                  height: 6.69 * SizeConfig.vmultiplier,
                  child: Stack(
                    children: [
                      Center(
                        child: Container(
                          height: 6.69 * SizeConfig.vmultiplier,
                          width: 83.33 * SizeConfig.hmultiplier,
                          decoration: BoxDecoration(
                            color: Colors.grey.shade800,
                            border: Border.all(
                              width: .55 * SizeConfig.hmultiplier,
                              color: Colors.white,
                            ),
                            borderRadius:
                                BorderRadius.all(Radius.circular(19.5)),
                          ),
                        ),
                      ),
                      Center(
                        child: Text(
                          "2490.32 Kg",
                          style: appText.copyWith(
                              fontSize: 6.66 * SizeConfig.hmultiplier,
                              fontWeight: FontWeight.w700,
                              fontFamily: 'Product Sans'),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 3.72 * SizeConfig.vmultiplier,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    margin:
                        EdgeInsets.only(left: 18.05 * SizeConfig.hmultiplier),
                    child: Text(
                      'You have attended',
                      style: appText.copyWith(
                          fontSize: 5.55 * SizeConfig.hmultiplier,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Product Sans'),
                    ),
                  ),
                ),
                SizedBox(
                  height: .89 * SizeConfig.vmultiplier,
                ),
                Container(
                  height: 6.69 * SizeConfig.vmultiplier,
                  child: Stack(
                    children: [
                      Center(
                        child: Container(
                          height: 6.69 * SizeConfig.vmultiplier,
                          width: 83.33 * SizeConfig.hmultiplier,
                          decoration: BoxDecoration(
                            color: Colors.grey.shade800,
                            border: Border.all(
                              width: .833 * SizeConfig.hmultiplier,
                              color: Colors.white,
                            ),
                            borderRadius:
                                BorderRadius.all(Radius.circular(19.5)),
                          ),
                        ),
                      ),
                      Center(
                        child: Text(
                          "52 Events",
                          style: appText.copyWith(
                              fontSize: 6.66 * SizeConfig.hmultiplier,
                              fontWeight: FontWeight.w700,
                              fontFamily: 'Product Sans'),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 3.72 * SizeConfig.vmultiplier,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    margin:
                        EdgeInsets.only(left: 18.05 * SizeConfig.hmultiplier),
                    child: Text(
                      'Your Score is',
                      style: appText.copyWith(
                          fontSize: 5.55 * SizeConfig.hmultiplier,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Product Sans'),
                    ),
                  ),
                ),
                SizedBox(
                  height: .89 * SizeConfig.vmultiplier,
                ),
                Container(
                  height: 6.69 * SizeConfig.vmultiplier,
                  child: Stack(
                    children: [
                      Center(
                        child: Container(
                          height: 6.69 * SizeConfig.vmultiplier,
                          width: 83.33 * SizeConfig.hmultiplier,
                          decoration: BoxDecoration(
                            color: Colors.grey.shade800,
                            border: Border.all(
                              width: .55 * SizeConfig.hmultiplier,
                              color: Colors.white,
                            ),
                            borderRadius:
                                BorderRadius.all(Radius.circular(19.5)),
                          ),
                        ),
                      ),
                      Center(
                        child: Text(
                          "32,456 Points",
                          style: appText.copyWith(
                              fontSize: 6.66 * SizeConfig.hmultiplier,
                              fontWeight: FontWeight.w700,
                              fontFamily: 'Product Sans'),
                        ),
                      )
                    ],
                  ),
                ),
              ]),
            ),
          ]),
        ),
        bottomNavigationBar: AppBottomNavigation(
          context: context,
        ),
      ),
    );
  }
}
