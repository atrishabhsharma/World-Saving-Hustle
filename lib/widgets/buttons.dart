import 'package:WSH/utils/style.dart';
import 'package:flutter/material.dart';

class AppButtons extends StatelessWidget {
  final String title;
  final String onpressed;
  final double height, width;
  AppButtons(
      {@required this.title,
      @required this.onpressed,
      this.height,
      this.width});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: RaisedButton(
          color: Colors.white,
          elevation: 7,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50.0),
          ),
          child: Text(
            title,
            style: appText.copyWith(
                fontFamily: 'Product Sans',
                color: Colors.grey[700],
                fontWeight: FontWeight.w700,
                fontSize: 24), // add Logic
          ),
          onPressed: () {
            Navigator.pushNamed(context, onpressed);
          }),
    );
  }
}
