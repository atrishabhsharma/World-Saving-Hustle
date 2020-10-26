import 'package:flutter/material.dart';

class AppTextField extends StatelessWidget {
  final String title;
  final Icon icon;
  final double height, width;
  AppTextField(
      {@required this.title, @required this.icon, this.height, this.width});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(30)),
      child: TextField(
          decoration: InputDecoration(
              border: InputBorder.none,
              labelText: title,
              labelStyle:
                  TextStyle(color: Colors.grey, fontSize: 18, letterSpacing: 1),
              suffixIcon: icon)),
    );
  }
}
