import 'package:WSH/utils/constants.dart';
import 'package:WSH/utils/style.dart';
import 'package:flutter/material.dart';

class MyProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "My Profile",
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
                  padding: const EdgeInsets.only(top: 30),
                  child: Center(
                    child: Image.asset(
                      Images.anyImage + '/picture-3.png',
                      fit: BoxFit.none,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Center(
                  child: Text(
                    'Martin Skadal',
                    style: appText.copyWith(
                        fontSize: 22,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Product Sans'),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    margin: EdgeInsets.only(left: 65),
                    child: Text(
                      'You have picked',
                      style: appText.copyWith(
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Product Sans'),
                    ),
                  ),
                ),
                SizedBox(
                  height: 6,
                ),
                Container(
                  height: 45,
                  child: Stack(
                    children: [
                      Center(
                        child: Container(
                          height: 45,
                          width: 300,
                          decoration: BoxDecoration(
                            color: Colors.grey.shade800,
                            border: Border.all(
                              width: 2,
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
                              fontSize: 24,
                              fontWeight: FontWeight.w700,
                              fontFamily: 'Product Sans'),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    margin: EdgeInsets.only(left: 65),
                    child: Text(
                      'You have attended',
                      style: appText.copyWith(
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Product Sans'),
                    ),
                  ),
                ),
                SizedBox(
                  height: 6,
                ),
                Container(
                  height: 45,
                  child: Stack(
                    children: [
                      Center(
                        child: Container(
                          height: 45,
                          width: 300,
                          decoration: BoxDecoration(
                            color: Colors.grey.shade800,
                            border: Border.all(
                              width: 2,
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
                              fontSize: 24,
                              fontWeight: FontWeight.w700,
                              fontFamily: 'Product Sans'),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    margin: EdgeInsets.only(left: 65),
                    child: Text(
                      'Your Score is',
                      style: appText.copyWith(
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Product Sans'),
                    ),
                  ),
                ),
                SizedBox(
                  height: 6,
                ),
                Container(
                  height: 45,
                  child: Stack(
                    children: [
                      Center(
                        child: Container(
                          height: 45,
                          width: 300,
                          decoration: BoxDecoration(
                            color: Colors.grey.shade800,
                            border: Border.all(
                              width: 2,
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
                              fontSize: 24,
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
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Color.fromARGB(255, 37, 37, 37),
          items: [
            BottomNavigationBarItem(
              icon: Image.asset(
                Images.anyImage + "/icons8-detective-96-7.png",
                width: 48,
                height: 48,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                Images.anyImage + "/nav2.png",
                width: 48,
                height: 48,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                Images.anyImage + "/icons8-calendar-500-7.png",
                width: 48,
                height: 48,
              ),
              label: '',
            ),
          ],
        ),
      ),
    );
  }
}
