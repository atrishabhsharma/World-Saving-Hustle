import 'package:WSH/utils/style.dart';
import 'package:flutter/material.dart';

class FilterByWidget extends StatelessWidget {
  final String title;
  final Function onPressed;
  FilterByWidget({@required this.onPressed, @required this.title});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: FlatButton(
        onPressed: onPressed,
        child: Text(
          title,
          style: appText.copyWith(
              fontWeight: FontWeight.w400,
              fontSize: 20,
              decoration: TextDecoration.underline),
        ),
      ),
    );
  }
}
