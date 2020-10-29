import 'package:WSH/utils/constants.dart';
import 'package:WSH/utils/style.dart';
import 'package:WSH/widgets/bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:WSH/utils/config.dart';

class Register extends StatelessWidget {
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
                Images.anyImage + "/appbaricon.png",
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
              Row(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(
                        top: 100,
                        bottom: 330,
                        left: 70),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: FlatButton(
                        height: 102,
                        minWidth: 102,
                        onPressed: () => [],
                        color: Colors.grey[700].withOpacity(.2),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(50)),
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
                            ]),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 100, bottom: 330),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: FlatButton(
                        height: 102,
                        minWidth: 102,
                        onPressed: () => null,
                        color: Colors.grey[700].withOpacity(.2),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(50)),
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
                ],
              ),
            ],
          ),
        ),
        bottomNavigationBar: AppBottomNavigation(),
      ),
    );
  }
}
