import 'package:WSH/utils/constants.dart';
import 'package:WSH/utils/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:WSH/utils/config.dart';

class Calender extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
                  margin: EdgeInsets.only(
                      top: 7.44 * SizeConfig.vmultiplier,
                      left: 13.88 * SizeConfig.hmultiplier,
                  ),
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      'Filter By :',
                      style: appText.copyWith(
                          fontSize:  6.66 * SizeConfig.hmultiplier, fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
                SizedBox(
                  height:  1.48 * SizeConfig.vmultiplier,
                ),
                Container(
                  margin: EdgeInsets.only(left: 40, right: 40),
                  height:  7.44 * SizeConfig.vmultiplier,
                  width:  111.1 * SizeConfig.hmultiplier,
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
                                fontSize: 3.88 * SizeConfig.hmultiplier, fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                      VerticalDivider(
                        width: 1.38 * SizeConfig.hmultiplier,
                        color: Colors.white,
                      ),
                      FlatButton(
                        onPressed: null,
                        child: Center(
                          child: Text(
                            'Focus',
                            style: appText.copyWith(
                                fontSize: 3.88 * SizeConfig.hmultiplier , fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                      VerticalDivider(
                        width: 1.38 * SizeConfig.hmultiplier,
                        color: Colors.white,
                      ),
                      FlatButton(
                        onPressed: null,
                        child: Center(
                          child: Text(
                            'Area',
                            style: appText.copyWith(
                                fontSize: 3.88 * SizeConfig.hmultiplier, fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                // Container(child: Image.asset(Images.anyImage + '/'),)
                Container(
                  margin: EdgeInsets.only(top: 5.95 * SizeConfig.vmultiplier),
                  child: Icon(
                    Icons.calendar_today,
                    size: 83.33 * SizeConfig.hmultiplier,
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
