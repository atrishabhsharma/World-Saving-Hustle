import 'package:WSH/utils/constants.dart';
import 'package:WSH/utils/style.dart';
import 'package:flutter/material.dart';

class EventContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      width: 300,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.white),
          color: Colors.grey[700].withOpacity(.7),
          borderRadius: BorderRadius.circular(30)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(left: 15),
                child: Text(
                  'Finna River Cleanup',
                  style: appText.copyWith(
                      fontSize: 24, fontWeight: FontWeight.w600),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 20),
                child: Image.asset(Images.anyImage + '/heart.png'),
              )
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            margin: EdgeInsets.only(left: 15),
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Text(
                '''13.6 Km Away
At Ness Bridge Rest Stop 
On 3rd April 2021
From 3:00pm - 6:00pm ''',
                style: appText.copyWith(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
