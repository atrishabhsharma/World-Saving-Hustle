import 'package:WSH/utils/constants.dart';
import 'package:WSH/utils/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Calender extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 50, left: 50),
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      'Filter By :',
                      style: appText.copyWith(
                          fontSize: 24, fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  margin: EdgeInsets.only(left: 40, right: 40),
                  height: 50,
                  width: 400,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                      color: Colors.grey[700].withOpacity(.7),
                      borderRadius: BorderRadius.circular(30)),
                  child: Row(
                    children: [
                      FlatButton(
                        onPressed: null,
                        child: Center(
                          child: Text(
                            'Range',
                            style: appText.copyWith(
                                fontSize: 14, fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                      VerticalDivider(
                        width: 5,
                        color: Colors.white,
                      ),
                      FlatButton(
                        onPressed: null,
                        child: Center(
                          child: Text(
                            'Focus',
                            style: appText.copyWith(
                                fontSize: 14, fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                      VerticalDivider(
                        width: 5,
                        color: Colors.white,
                      ),
                      FlatButton(
                        onPressed: null,
                        child: Center(
                          child: Text(
                            'Area',
                            style: appText.copyWith(
                                fontSize: 14, fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                // Container(child: Image.asset(Images.anyImage + '/'),)
                Container(
                  margin: EdgeInsets.only(top: 40),
                  child: Icon(
                    Icons.calendar_today,
                    size: 300,
                    color: Colors.white,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
