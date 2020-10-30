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
          leading: Container(),
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
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.only(
                              top: 10.4 * SizeConfig.vmultiplier,
                            ),
                            child: Align(
                              alignment: Alignment.topLeft,
                              child: FlatButton(
                                height: 15.17 * SizeConfig.vmultiplier,
                                minWidth: 28.8 * SizeConfig.hmultiplier,
                                onPressed: () => Navigator.pushReplacementNamed(
                                    context, 'pickabagpage'),
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
                                        height: 0.45 * SizeConfig.vmultiplier,
                                      ),
                                      Text(
                                        "PICKABAG",
                                        textAlign: TextAlign.left,
                                        style: appText.copyWith(
                                            fontSize:
                                                3.88 * SizeConfig.hmultiplier,
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
                            padding: EdgeInsets.only(
                                top: 10.41 * SizeConfig.vmultiplier),
                            child: Align(
                              alignment: Alignment.topLeft,
                              child: FlatButton(
                                height: 15.17 * SizeConfig.vmultiplier,
                                minWidth: 28.8 * SizeConfig.hmultiplier,
                                onPressed: () => Navigator.pushReplacementNamed(
                                    context, 'eventpage'),
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
                                        height: 0.45 * SizeConfig.vmultiplier,
                                      ),
                                      Text(
                                        "EVENTS",
                                        textAlign: TextAlign.left,
                                        style: appText.copyWith(
                                            fontSize:
                                                3.88 * SizeConfig.hmultiplier,
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
            ],
          ),
        ),
        bottomNavigationBar: AppBottomNavigation(),
      ),
    );
  }
}
